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
import 'package:flutter_svg/flutter_svg.dart';

class GoodnessScreen extends StatefulWidget {
  const GoodnessScreen({super.key});

  @override
  State<GoodnessScreen> createState() => _GoodnessScreenState();
}

class _GoodnessScreenState extends State<GoodnessScreen> {
  Map<String, String>? selectedFund;

  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Добро', style: TextStyles.titleH1.copyWith(color: Colors.black)),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                'assets/images/vklad.png',
                height: 173,
              ),
            ),
            const SizedBox(height: 32.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Image.asset(
                    'assets/images/goodness_1.png',
                    height: 220,
                  ),
                  const SizedBox(width: 8.0),
                  Image.asset(
                    'assets/images/goodness_2.png',
                    height: 220,
                  ),
                  const SizedBox(width: 8.0),
                  Image.asset(
                    'assets/images/goodness_3.png',
                    height: 220,
                  ),
                  const SizedBox(width: 16.0),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Вы помогаете', style: TextStyles.medium22.copyWith(color: Colors.black)),
            ),
            const SizedBox(height: 24.0),
            BlocProvider<ChipSelectCubit>(
              create: (context) => sl<ChipSelectCubit>(),
              child: BlocBuilder<ChipSelectCubit, ChipSelectState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ChoiceChipGroupWidget(chipsLabelList: Strings.funds.keys.toList()),
                      ),
                      const SizedBox(height: 24.0),
                      (state is ChipSelectStateChanged)
                          ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
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
                              ),
                          )
                          : const SizedBox.shrink(),
                      const SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomAccentButtonWidget(
                          title: 'Выбрать фонд',
                          onTap: selectedFund == null ? null : () {},
                        ),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
