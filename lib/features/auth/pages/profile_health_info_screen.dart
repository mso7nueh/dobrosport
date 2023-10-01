import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/icon_urls.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ProfileHealthInfoScreen extends StatefulWidget {
  const ProfileHealthInfoScreen({super.key});

  @override
  State<ProfileHealthInfoScreen> createState() => _ProfileHealthInfoScreenState();
}

class _ProfileHealthInfoScreenState extends State<ProfileHealthInfoScreen> {
  String? birthday;
  String? sex;
  String? height;
  String? weight;

  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.settingsHealth, style: TextStyles.titleH1.copyWith(color: Colors.black)),
            const SizedBox(height: 8.0),
            Text(Strings.settingsHealthDescription, style: TextStyles.bodyRegular.copyWith(color: AppColors.grey)),
            const SizedBox(height: 24.0),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              leading: SvgPicture.asset(IconUrls.appleHealth),
              minLeadingWidth: 0,
              title: Text(
                Strings.appleHealth,
                style: TextStyles.bodyRegular.copyWith(color: Colors.black),
              ),
              tileColor: AppColors.grey3,
              trailing: CupertinoSwitch(
                value: false,
                onChanged: (bool value) {},
              ),
            ),
            const SizedBox(height: 8.0),
            Column(
              children: [
                _partListTile(
                  Strings.birthday,
                  birthday ?? Strings.notSet,
                  const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  () {
                    setState(
                      () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => CupertinoActionSheet(
                            actions: [
                              SizedBox(
                                height: 200,
                                child: CupertinoDatePicker(
                                  initialDateTime: DateTime.now(),
                                  mode: CupertinoDatePickerMode.date,
                                  onDateTimeChanged: (val) {
                                    setState(
                                      () {
                                        birthday = DateFormat('dd.MM.yyyy').format(val);
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                _divider(),
                _partListTile(
                  Strings.sex,
                  sex ?? Strings.notSet,
                  BorderRadius.zero,
                  () {
                    setState(
                      () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => CupertinoActionSheet(
                            actions: [
                              SizedBox(
                                height: 140,
                                child: CupertinoPicker(
                                  itemExtent: 64.0,
                                  onSelectedItemChanged: (int value) {
                                    setState(() {
                                      sex = Strings.sexList[value];
                                    });
                                  },
                                  children: List<Widget>.generate(
                                    Strings.sexList.length,
                                    (int index) {
                                      return Center(child: Text(Strings.sexList[index]));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                _divider(),
                _partListTile(
                  Strings.height,
                  height ?? Strings.notSet,
                  BorderRadius.zero,
                  () {
                    setState(
                      () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => CupertinoActionSheet(
                            actions: [
                              SizedBox(
                                height: 400,
                                child: CupertinoPicker(
                                  itemExtent: 32.0,
                                  onSelectedItemChanged: (int value) {
                                    setState(() {
                                      height = value.toString();
                                    });
                                  },
                                  scrollController: FixedExtentScrollController(initialItem: 166),
                                  children: List<Widget>.generate(300, (int index) {
                                    return Center(child: Text(index.toString()));
                                  }),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                _divider(),
                _partListTile(
                  Strings.weight,
                  weight ?? Strings.notSet,
                  const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  () {
                    setState(
                      () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => CupertinoActionSheet(
                            actions: [
                              SizedBox(
                                height: 400,
                                child: CupertinoPicker(
                                  itemExtent: 32.0,
                                  onSelectedItemChanged: (int value) {
                                    setState(() {
                                      weight = value.toString();
                                    });
                                  },
                                  scrollController: FixedExtentScrollController(initialItem: 66),
                                  children: List<Widget>.generate(300, (int index) {
                                    return Center(child: Text(index.toString()));
                                  }),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            const Spacer(),
            CustomAccentButtonWidget(
              title: Strings.next,
              onTap: () {
                context.goNamed('fundSelectionScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

_partListTile(String title, String trailing, BorderRadius borderRadius, Function() onTap) {
  return ListTile(
    onTap: onTap,
    title: Text(
      title,
      style: TextStyles.bodyRegular.copyWith(color: Colors.black),
    ),
    tileColor: AppColors.grey3,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
    trailing: Text(
      trailing,
      style: TextStyles.bodyRegular.copyWith(color: AppColors.grey),
    ),
  );
}

_divider() {
  return const Divider(
    color: AppColors.grey2,
    thickness: 1.0,
    height: 1.0,
  );
}
