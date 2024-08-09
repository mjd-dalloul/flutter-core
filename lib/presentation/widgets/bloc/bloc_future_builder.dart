import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

class BlocFutureBuilder<T extends Bloc, D> extends StatelessWidget {
  const BlocFutureBuilder({
    Key? key,
    required this.bloc,
    required this.isLoading,
    required this.futureResult,
    required this.loadingWidget,
    required this.errorWidget,
    required this.onSuccess,
    required this.hasError,
  }) : super(key: key);

  final T bloc;
  final ValueGetter<bool> isLoading;
  final ValueGetter<bool> hasError;
  final Widget Function(BuildContext, D?) onSuccess;
  final ValueGetter<D?> futureResult;
  final Widget loadingWidget;
  final ValueGetter<Widget> errorWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, _) => _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) => isLoading.call()
      ? loadingWidget
      : hasError.call()
          ? errorWidget.call()
          : onSuccess.call(
              context,
              futureResult.call(),
            );
}

class FutureDataModelWrapperBuilder<T extends Bloc, D> extends StatelessWidget {
  const FutureDataModelWrapperBuilder({
    Key? key,
    required this.bloc,
    required this.isLoading,
    required this.dataResult,
    required this.loadingWidget,
    required this.errorWidget,
    required this.onSuccess,
  }) : super(key: key);

  final T bloc;
  final ValueGetter<bool> isLoading;
  final Widget Function(BuildContext, D?) onSuccess;
  final ValueGetter<DataModelWrapper<D?>> dataResult;
  final Widget loadingWidget;
  final Widget Function(BuildContext, BaseFailure?) errorWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, _) => _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) => isLoading.call()
      ? loadingWidget
      : dataResult.call().isFailure
          ? errorWidget.call(context, dataResult.call().failure)
          : onSuccess.call(
              context,
              dataResult.call().data,
            );
}
