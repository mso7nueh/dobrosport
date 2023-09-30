import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/custom_text_form_field_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailAddressTextEditingController = TextEditingController();
  final TextEditingController passwordTextEditingController = TextEditingController();

  bool passwordIsVisibly = false;

  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.entrance, style: TextStyles.titleH1.copyWith(color: Colors.black)),
            const SizedBox(height: 8.0),
            Text(Strings.enterAddressAndPasswordLogin, style: TextStyles.bodyRegular.copyWith(color: AppColors.grey)),
            const SizedBox(height: 24.0),
            CustomTextFormFieldWidget(
              textEditingController: emailAddressTextEditingController,
              hintText: Strings.email,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 8.0),
            CustomTextFormFieldWidget(
              textEditingController: passwordTextEditingController,
              hintText: Strings.password,
              textInputType: TextInputType.visiblePassword,
              obscureText: passwordIsVisibly,
              suffixIcon: GestureDetector(
                onTap: () => setState(() {
                  passwordIsVisibly = !passwordIsVisibly;
                }),
                child: passwordIsVisibly
                    ? const Icon(
                        Icons.visibility_off_outlined,
                        color: AppColors.grey,
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                        color: AppColors.grey,
                      ),
              ),
            ),
            const Spacer(),
            CustomAccentButtonWidget(
              title: Strings.enter,
              onTap: () {
                context.goNamed('profileInfoScreen');
              },
            ),
            const SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                context.goNamed('signUpScreen');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Strings.haveNotAccount, style: TextStyles.bodyRegular.copyWith(color: Colors.black)),
                  Text(Strings.register, style: TextStyles.medium17.copyWith(color: AppColors.accent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
