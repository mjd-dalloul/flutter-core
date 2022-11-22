part of 'base_bloc.dart';

@freezed
class BaseBlocEvent with _$BaseBlocEvent {
  const factory BaseBlocEvent.loadingChanged(bool isLoading) = LoadingChanged;

  const factory BaseBlocEvent.contextCallbackTriggered(
    ContextCallback contextCallback,
  ) = ContextCallbackTriggered;
}
