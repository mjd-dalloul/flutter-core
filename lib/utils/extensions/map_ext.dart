import 'package:dio/dio.dart';
import 'package:flutter_core/utils/token_constants.dart';

extension MapExt on Map {
  Map useAuthenticationToken(bool useAuthentication) {
    this[TokenConstants.ATTACH_AUTHENTICATION] = useAuthentication;
    return this;
  }

  FormData toFormData() => FormData.fromMap(this as Map<String, dynamic>);
}
