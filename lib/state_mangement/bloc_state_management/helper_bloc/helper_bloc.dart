import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper_bloc.freezed.dart';

part 'helper_bloc_event.dart';

part 'helper_bloc_state.dart';

class HelperBloc extends Bloc<HelperBlocEvent, HelperBlocState> {
  HelperBloc() : super(HelperBlocState.initial()) {
    on<ContextCallbackTriggered>(_onContextCallbackTriggered);
    on<LoadingChanged>(_onLoadingChanged);
    on<FailureHappened>(_onFailureHappened);
    on<UnknownErrorHappened>(_onUnknownErrorHappened);
    on<FailureCleared>(_onFailureCleared);
  }

  Future<void> _onContextCallbackTriggered(
      ContextCallbackTriggered event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(
      contextCallback: event.contextCallback,
    ));
  }

  Future<void> _onFailureHappened(
      FailureHappened event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(
      failure: event.failure,
    ));
  }

  Future<void> _onUnknownErrorHappened(
      UnknownErrorHappened event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(
      unknownError: event.unknownError,
    ));
  }

  Future<void> _onLoadingChanged(
      LoadingChanged event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(
      isLoading: event.isLoading,
    ));
  }

  Future<void> _onFailureCleared(
      FailureCleared event, Emitter<HelperBlocState> emit) async {
    emit(state.copyWith(
      unknownError: null,
      failure: null,
    ));
  }
}
