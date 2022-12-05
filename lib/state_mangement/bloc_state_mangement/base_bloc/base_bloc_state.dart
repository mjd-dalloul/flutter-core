part of 'base_bloc.dart';

@freezed
class BaseBlocState with _$BaseBlocState {
  const factory BaseBlocState({
    required bool isLoading,
    required ContextCallback contextCallback,
    BaseFailure? failure,
    Object? unknownError,
  }) = _BaseBlocState;

  factory BaseBlocState.initial() => BaseBlocState(
        isLoading: false,
        contextCallback: (_) {},
      );
}
