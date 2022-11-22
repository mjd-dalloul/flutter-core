import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

typedef Deserializer<T> = T Function(Object?);
typedef MapDeserializer<T> = T Function(Map<String, dynamic>);
typedef ToMap<T> = Map<String, dynamic> Function();
typedef NetworkRequest = Future<Response> Function();
typedef ContextCallback = void Function(BuildContext);
