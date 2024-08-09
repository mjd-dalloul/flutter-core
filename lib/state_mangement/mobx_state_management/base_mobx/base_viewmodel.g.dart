// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseViewmodel on _BaseViewmodelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_BaseViewmodelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$contextCallbackAtom =
      Atom(name: '_BaseViewmodelBase.contextCallback', context: context);

  @override
  ContextCallback? get contextCallback {
    _$contextCallbackAtom.reportRead();
    return super.contextCallback;
  }

  @override
  set contextCallback(ContextCallback? value) {
    _$contextCallbackAtom.reportWrite(value, super.contextCallback, () {
      super.contextCallback = value;
    });
  }

  late final _$_BaseViewmodelBaseActionController =
      ActionController(name: '_BaseViewmodelBase', context: context);

  @override
  void getContext(ContextCallback callback) {
    final _$actionInfo = _$_BaseViewmodelBaseActionController.startAction(
        name: '_BaseViewmodelBase.getContext');
    try {
      return super.getContext(callback);
    } finally {
      _$_BaseViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startLoading() {
    final _$actionInfo = _$_BaseViewmodelBaseActionController.startAction(
        name: '_BaseViewmodelBase.startLoading');
    try {
      return super.startLoading();
    } finally {
      _$_BaseViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopLoading() {
    final _$actionInfo = _$_BaseViewmodelBaseActionController.startAction(
        name: '_BaseViewmodelBase.stopLoading');
    try {
      return super.stopLoading();
    } finally {
      _$_BaseViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLoading() {
    final _$actionInfo = _$_BaseViewmodelBaseActionController.startAction(
        name: '_BaseViewmodelBase.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$_BaseViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
contextCallback: ${contextCallback}
    ''';
  }
}
