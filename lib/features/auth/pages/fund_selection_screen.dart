import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/icon_urls.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/choice_chip_group_widget.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:dobrosport/features/auth/bloc/chip_select_cubit/chip_select_cubit.dart';
import 'package:dobrosport/features/auth/bloc/chip_select_cubit/chip_select_state.dart';
import 'package:dobrosport/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class FundSelectionScreen extends StatefulWidget {
  const FundSelectionScreen({super.key});

  @override
  State<FundSelectionScreen> createState() => _FundSelectionScreenState();
}

class _FundSelectionScreenState extends State<FundSelectionScreen> {
  Map<String, String>? selectedFund;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChipSelectCubit>(
      create: (context) => sl<ChipSelectCubit>(),
      child: BlocBuilder<ChipSelectCubit, ChipSelectState>(
        builder: (context, state) {
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
                  (state is ChipSelectStateChanged)
                      ? Column(
                          children: [
                            for (int i = 0; i < Strings.funds[state.chip]!.length; i++) ...[
                              ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedFund = Strings.funds[state.chip]![i];
                                  });
                                },
                                contentPadding: const EdgeInsets.all(16.0),
                                titleAlignment: ListTileTitleAlignment.top,
                                leading: Image.asset(Strings.funds[state.chip]![i]['image']!),
                                horizontalTitleGap: 8.0,
                                title: Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    Strings.funds[state.chip]![i]['title']!,
                                    style: TextStyles.medium17.copyWith(color: Colors.black),
                                  ),
                                ),
                                subtitle: Text(
                                  Strings.funds[state.chip]![i]['description']!,
                                  style: TextStyles.regular12.copyWith(color: AppColors.grey),
                                ),
                                trailing: selectedFund == Strings.funds[state.chip]![i] ? SvgPicture.asset(IconUrls.check) : null,
                                tileColor: AppColors.grey3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ],
                        )
                      : const SizedBox.shrink(),
                  const Spacer(),
                  CustomAccentButtonWidget(
                    title: Strings.selectFund,
                    onTap: selectedFund == null ? null : () {
                      context.goNamed('activityScreen');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
