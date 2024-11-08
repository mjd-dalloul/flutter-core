import 'dart:async';

extension FunctionExt on Function {
  void runAfter(Duration duration) {
    Timer(duration, () => this.call());
  }
}
