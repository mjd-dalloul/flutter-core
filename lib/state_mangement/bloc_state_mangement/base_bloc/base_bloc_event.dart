part of 'base_bloc.dart';

@freezed
class BaseBlocEvent with _$BaseBlocEvent {
  const factory BaseBlocEvent.loadingChanged(bool isLoading) = LoadingChanged;

  const factory BaseBlocEvent.failureHappened(BaseFailure failure) =
      FailureHappened;

  const factory BaseBlocEvent.unknownErrorHappened(Object unknownError) =
      UnknownErrorHappened;

  const factory BaseBlocEvent.contextCallbackTriggered(
    ContextCallback contextCallback,
  ) = ContextCallbackTriggered;
}
