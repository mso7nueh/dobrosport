import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/choice_chip_group_widget.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/custom_text_form_field_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileInfoScreen extends StatefulWidget {
  const ProfileInfoScreen({super.key});

  @override
  State<ProfileInfoScreen> createState() => _ProfileInfoScreenState();
}

class _ProfileInfoScreenState extends State<ProfileInfoScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.fillProfile, style: TextStyles.titleH1.copyWith(color: Colors.black)),
            const SizedBox(height: 8.0),
            Text(Strings.fillProfileDescription, style: TextStyles.bodyRegular.copyWith(color: AppColors.grey)),
            const SizedBox(height: 24.0),
            CustomTextFormFieldWidget(
              textEditingController: firstNameController,
              hintText: Strings.firstName,
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 8.0),
            CustomTextFormFieldWidget(
              textEditingController: lastNameController,
              hintText: Strings.lastName,
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 24.0),
            Text(Strings.division, style: TextStyles.medium22.copyWith(color: Colors.black)),
            const SizedBox(height: 8.0),
            const ChoiceChipGroupWidget(chipsLabelList: Strings.divisionsList),
            const Spacer(),
            CustomAccentButtonWidget(
              title: Strings.next,
              onTap: () {
                context.goNamed('profileHealthInfoScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
