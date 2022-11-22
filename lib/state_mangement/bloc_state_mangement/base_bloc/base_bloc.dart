import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_bloc.freezed.dart';

part 'base_bloc_event.dart';

part 'base_bloc_state.dart';

class BaseBloc extends Bloc<BaseBlocEvent, BaseBlocState> {
  BaseBloc() : super(BaseBlocState.initial()) {
    on<ContextCallbackTriggered>(_onContextCallbackTriggered);
    on<LoadingChanged>(_onLoadingChanged);
  }

  Future<void> _onContextCallbackTriggered(
      ContextCallbackTriggered event, Emitter<BaseBlocState> emit) async {
    emit(state.copyWith(
      contextCallback: event.contextCallback,
    ));
  }

  Future<void> _onLoadingChanged(
      LoadingChanged event, Emitter<BaseBlocState> emit) async {
    emit(state.copyWith(
      isLoading: event.isLoading,
    ));
  }
}
