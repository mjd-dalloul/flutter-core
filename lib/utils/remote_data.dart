import 'package:flutter_core/utils/network_failures.dart';

abstract class NetworkResponse<T> {
  const NetworkResponse();

  bool get isSuccess => this is SuccessNetworkResponse;

  bool get isFailure => this is FailureNetworkResponse;

  T? get getResponse =>
      isSuccess ? (this as SuccessNetworkResponse<T>).data : null;

  NetworkFailure? get getFailure =>
      isFailure ? (this as FailureNetworkResponse<T>).networkFailure : null;
}

class SuccessNetworkResponse<T> extends NetworkResponse<T> {
  const SuccessNetworkResponse(this.data);

  final T? data;

  @override
  String toString() => 'data coming from network => ${data.toString()}';
}

class FailureNetworkResponse<T> extends NetworkResponse<T> {
  const FailureNetworkResponse(this.networkFailure);

  final NetworkFailure networkFailure;

  @override
  String toString() =>
      'network failure with message => ${networkFailure.getFailureMessage()} \n network failure is => ${networkFailure.toString()}';
}
