extension ObjectExt<T> on T {
  T apply(void Function(T) blocFunction) {
    blocFunction.call(this);
    return this;
  }
}
