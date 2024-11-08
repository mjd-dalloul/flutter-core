part of 'helper_bloc.dart';

@freezed
class HelperBlocState with _$HelperBlocState {
  const factory HelperBlocState({
    required bool isLoading,
    required ContextCallback contextCallback,
    BaseFailure? failure,
    Object? unknownError,
  }) = _HelperBlocState;

  factory HelperBlocState.initial() => HelperBlocState(
        isLoading: false,
        contextCallback: (_) {},
      );
}
