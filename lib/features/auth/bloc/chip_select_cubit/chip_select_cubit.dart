import 'package:dobrosport/features/auth/bloc/chip_select_cubit/chip_select_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChipSelectCubit extends Cubit<ChipSelectState> {
  ChipSelectCubit() : super(const ChipSelectState.empty());

  void changeCurrentChip(String chip) {
    emit(ChipSelectState.changed(chip: chip));
  }
}
