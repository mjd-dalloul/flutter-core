import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

typedef Deserializer<T> = T Function(Object?);
typedef NetworkRequest = Future<Response> Function();
typedef ContextCallback = void Function(BuildContext);
