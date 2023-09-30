import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/choice_chip_group_widget.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';

class FundSelectionScreen extends StatefulWidget {
  const FundSelectionScreen({super.key});

  @override
  State<FundSelectionScreen> createState() => _FundSelectionScreenState();
}

class _FundSelectionScreenState extends State<FundSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.fundSelection, style: TextStyles.titleH1.copyWith(color: Colors.black)),
            const SizedBox(height: 8.0),
            Text(Strings.fundSelectionDescription, style: TextStyles.bodyRegular.copyWith(color: AppColors.grey)),
            const SizedBox(height: 24.0),
            ChoiceChipGroupWidget(chipsLabelList: Strings.funds.keys.toList()),
            const SizedBox(height: 24.0),
            for (int i = 0; i < Strings.funds['Бездомные']!.length; i++) ...[
              ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                titleAlignment: ListTileTitleAlignment.top,
                leading: Image.asset(Strings.funds['Бездомные']![i]['image']!),
                horizontalTitleGap: 8.0,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    Strings.funds['Бездомные']![i]['title']!,
                    style: TextStyles.medium17.copyWith(color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  Strings.funds['Бездомные']![i]['description']!,
                  style: TextStyles.regular12.copyWith(color: AppColors.grey),
                ),
                tileColor: AppColors.grey3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
            const Spacer(),
            CustomAccentButtonWidget(
              title: Strings.selectFund,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
