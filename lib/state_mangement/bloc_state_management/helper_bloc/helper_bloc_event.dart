part of 'helper_bloc.dart';

@freezed
class HelperBlocEvent with _$HelperBlocEvent {
  const factory HelperBlocEvent.loadingChanged(bool isLoading) = LoadingChanged;

  const factory HelperBlocEvent.failureCleared() = FailureCleared;

  const factory HelperBlocEvent.failureHappened(BaseFailure failure) =
      FailureHappened;

  const factory HelperBlocEvent.unknownErrorHappened(Object unknownError) =
      UnknownErrorHappened;

  const factory HelperBlocEvent.contextCallbackTriggered(
    ContextCallback contextCallback,
  ) = ContextCallbackTriggered;
}
