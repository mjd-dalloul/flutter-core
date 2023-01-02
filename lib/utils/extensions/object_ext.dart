extension ObjectExt on Object {
  Object apply(void Function(Object) blocFunction) {
    blocFunction.call(this);
    return this;
  }
}
