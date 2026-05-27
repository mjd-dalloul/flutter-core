// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestModel _$TestModelFromJson(Map<String, dynamic> json) => _TestModel(
  id: (json['id'] as num?)?.toInt(),
  body: json['body'] as String?,
);

Map<String, dynamic> _$TestModelToJson(_TestModel instance) =>
    <String, dynamic>{'id': instance.id, 'body': instance.body};
