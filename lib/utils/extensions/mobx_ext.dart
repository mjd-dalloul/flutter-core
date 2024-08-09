import 'package:mobx/mobx.dart';

extension ObservableFutureExtension<T> on ObservableFuture<T> {
  bool get isPending => status == FutureStatus.pending;

  bool get isSuccess => status == FutureStatus.fulfilled;

  bool get isFailure => status == FutureStatus.rejected;
}

extension ObservableFutureExtension2<T> on ObservableFuture<T>? {
  bool get isPending => this?.status == FutureStatus.pending;

  bool get isSuccess => this?.status == FutureStatus.fulfilled;

  bool get isFailure => this?.status == FutureStatus.rejected;
}
