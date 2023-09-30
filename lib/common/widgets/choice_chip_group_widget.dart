import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/features/auth/bloc/chip_select_cubit/chip_select_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoiceChipGroupWidget extends StatefulWidget {
  final List<String> chipsLabelList;

  const ChoiceChipGroupWidget({super.key, required this.chipsLabelList});

  @override
  State<ChoiceChipGroupWidget> createState() => _ChoiceChipGroupWidgetState();
}

class _ChoiceChipGroupWidgetState extends State<ChoiceChipGroupWidget> {
  int? _selectedChipIndex;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: -8.0,
      children: List.generate(
        widget.chipsLabelList.length,
            (int index) {
          return ChoiceChip(
            selectedColor: AppColors.accent,
            pressElevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            label: Text(widget.chipsLabelList[index]),
            labelStyle: TextStyles.regular14.copyWith(color: index == _selectedChipIndex ? Colors.white : AppColors.grey),
            selected: _selectedChipIndex == index,
            backgroundColor: AppColors.grey3,
            onSelected: (bool selected) {
              setState(() {
                _selectedChipIndex = selected ? index : null;
                context.read<ChipSelectCubit>().changeCurrentChip(widget.chipsLabelList[_selectedChipIndex!]);
              });
            },
          );
        },
      ).toList(),
    );
  }
}
