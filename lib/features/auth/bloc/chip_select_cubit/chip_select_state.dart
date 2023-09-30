import 'package:freezed_annotation/freezed_annotation.dart';

part 'chip_select_state.freezed.dart';

@freezed
abstract class ChipSelectState with _$ChipSelectState {
  const factory ChipSelectState.empty() = ChipSelectStateEmpty;

  const factory ChipSelectState.changed({required String chip}) = ChipSelectStateChanged;
}
