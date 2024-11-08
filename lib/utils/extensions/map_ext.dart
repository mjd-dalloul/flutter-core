import 'package:dio/dio.dart';
import 'package:flutter_core/utils/token_constants.dart';

extension MapExt on Map {
  Map<String, dynamic> useAuthenticationToken(bool useAuthentication) {
    this[TokenConstants.ATTACH_AUTHENTICATION] = useAuthentication;
    return this as Map<String, dynamic>;
  }

  FormData toFormData() => FormData.fromMap(this as Map<String, dynamic>);
}
