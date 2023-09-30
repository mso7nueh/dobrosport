// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chip_select_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChipSelectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String chip) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String chip)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String chip)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChipSelectStateEmpty value) empty,
    required TResult Function(ChipSelectStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChipSelectStateEmpty value)? empty,
    TResult? Function(ChipSelectStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChipSelectStateEmpty value)? empty,
    TResult Function(ChipSelectStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChipSelectStateCopyWith<$Res> {
  factory $ChipSelectStateCopyWith(
          ChipSelectState value, $Res Function(ChipSelectState) then) =
      _$ChipSelectStateCopyWithImpl<$Res, ChipSelectState>;
}

/// @nodoc
class _$ChipSelectStateCopyWithImpl<$Res, $Val extends ChipSelectState>
    implements $ChipSelectStateCopyWith<$Res> {
  _$ChipSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChipSelectStateEmptyImplCopyWith<$Res> {
  factory _$$ChipSelectStateEmptyImplCopyWith(_$ChipSelectStateEmptyImpl value,
          $Res Function(_$ChipSelectStateEmptyImpl) then) =
      __$$ChipSelectStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChipSelectStateEmptyImplCopyWithImpl<$Res>
    extends _$ChipSelectStateCopyWithImpl<$Res, _$ChipSelectStateEmptyImpl>
    implements _$$ChipSelectStateEmptyImplCopyWith<$Res> {
  __$$ChipSelectStateEmptyImplCopyWithImpl(_$ChipSelectStateEmptyImpl _value,
      $Res Function(_$ChipSelectStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChipSelectStateEmptyImpl implements ChipSelectStateEmpty {
  const _$ChipSelectStateEmptyImpl();

  @override
  String toString() {
    return 'ChipSelectState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChipSelectStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String chip) changed,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String chip)? changed,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String chip)? changed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChipSelectStateEmpty value) empty,
    required TResult Function(ChipSelectStateChanged value) changed,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChipSelectStateEmpty value)? empty,
    TResult? Function(ChipSelectStateChanged value)? changed,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChipSelectStateEmpty value)? empty,
    TResult Function(ChipSelectStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ChipSelectStateEmpty implements ChipSelectState {
  const factory ChipSelectStateEmpty() = _$ChipSelectStateEmptyImpl;
}

/// @nodoc
abstract class _$$ChipSelectStateChangedImplCopyWith<$Res> {
  factory _$$ChipSelectStateChangedImplCopyWith(
          _$ChipSelectStateChangedImpl value,
          $Res Function(_$ChipSelectStateChangedImpl) then) =
      __$$ChipSelectStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chip});
}

/// @nodoc
class __$$ChipSelectStateChangedImplCopyWithImpl<$Res>
    extends _$ChipSelectStateCopyWithImpl<$Res, _$ChipSelectStateChangedImpl>
    implements _$$ChipSelectStateChangedImplCopyWith<$Res> {
  __$$ChipSelectStateChangedImplCopyWithImpl(
      _$ChipSelectStateChangedImpl _value,
      $Res Function(_$ChipSelectStateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chip = null,
  }) {
    return _then(_$ChipSelectStateChangedImpl(
      chip: null == chip
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChipSelectStateChangedImpl implements ChipSelectStateChanged {
  const _$ChipSelectStateChangedImpl({required this.chip});

  @override
  final String chip;

  @override
  String toString() {
    return 'ChipSelectState.changed(chip: $chip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChipSelectStateChangedImpl &&
            (identical(other.chip, chip) || other.chip == chip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChipSelectStateChangedImplCopyWith<_$ChipSelectStateChangedImpl>
      get copyWith => __$$ChipSelectStateChangedImplCopyWithImpl<
          _$ChipSelectStateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String chip) changed,
  }) {
    return changed(chip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String chip)? changed,
  }) {
    return changed?.call(chip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String chip)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(chip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChipSelectStateEmpty value) empty,
    required TResult Function(ChipSelectStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChipSelectStateEmpty value)? empty,
    TResult? Function(ChipSelectStateChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChipSelectStateEmpty value)? empty,
    TResult Function(ChipSelectStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ChipSelectStateChanged implements ChipSelectState {
  const factory ChipSelectStateChanged({required final String chip}) =
      _$ChipSelectStateChangedImpl;

  String get chip;
  @JsonKey(ignore: true)
  _$$ChipSelectStateChangedImplCopyWith<_$ChipSelectStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
