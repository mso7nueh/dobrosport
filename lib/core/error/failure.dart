import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure {
  const factory Failure() = _Failure;
}

@freezed
class ServerFailure extends Failure {
  const factory ServerFailure() = _ServerFailure;
}

@freezed
class CacheFailure extends Failure {
  const factory CacheFailure() = _CacheFailure;
}
