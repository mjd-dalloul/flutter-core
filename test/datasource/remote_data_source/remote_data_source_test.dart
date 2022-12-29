import 'package:dio/dio.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/datasource/remote_data_source/base_remote_data_source.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/extensions/map_ext.dart';
import 'package:flutter_core/utils/failures/network_failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../core/models/test_model.dart';
import 'remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final dio = MockDio();
  TestModel testModel = const TestModel(id: 1, body: 'test');
  group('Http requests', () {
    final BaseRemoteDataSource baseRemoteDataSourceImpl =
        BaseRemoteDataSource(dio);
    final options = Options(
      headers: null,
      extra: <String, dynamic>{}.useAuthenticationToken(true),
    );
    test('POST request', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.post(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.POST,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(res, DataModelWrapper.networkData(data: testModel));
    });
    test('GET request', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.get(
        'test',
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 200,
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.GET,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(res, DataModelWrapper.networkData(data: testModel));
    });
    test('PUT request', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.put(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.PUT,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(res, DataModelWrapper.networkData(data: testModel));
    });
    test('DELETE request', () async {
      when(dio.delete(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.DELETE,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(res, DataModelWrapper.networkData(data: testModel));
    });
    test('PATCH request', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.patch(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 201,
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.PATCH,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(res, DataModelWrapper.networkData(data: testModel));
    });
  });
  group('Http failures', () {
    final BaseRemoteDataSource baseRemoteDataSourceImpl =
        BaseRemoteDataSource(dio);
    test('un authentication exception', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.post(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 400,
          statusMessage: 'UNAUTHENTICATED',
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.POST,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(
          res,
          const DataModelWrapper<TestModel>.networkDataFailure(
              networkFailure:
                  NetworkFailure.unauthenticatedFailure('UNAUTHENTICATED')));
    });
    test('server failure exception', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.post(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 500,
          statusMessage: 'SOMETHING WENT WRONG',
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.POST,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(
          res,
          const DataModelWrapper<TestModel>.networkDataFailure(
              networkFailure:
                  NetworkFailure.serverFailure('SOMETHING WENT WRONG')));
    });
    test('custom failure exception', () async {
      final options = Options(
        headers: null,
        extra: <String, dynamic>{}.useAuthenticationToken(true),
      );
      when(dio.post(
        'test',
        data: testModel.toJson(),
        queryParameters: null,
        cancelToken: null,
        onReceiveProgress: null,
        onSendProgress: null,
        options: options,
      )).thenAnswer(
        (realInvocation) async => Response(
          statusCode: 300,
          statusMessage: 'SOMETHING WENT WRONG',
          requestOptions: RequestOptions(path: 'test'),
          data: testModel.toJson(),
        ),
      );
      final res = await baseRemoteDataSourceImpl.request(
        requestType: HttpRequestTypes.POST,
        endPoint: 'test',
        options: options,
        data: testModel.toJson(),
        useAuthenticationToken: true,
        deserializer: (data) =>
            TestModel.fromJson(data as Map<String, dynamic>),
      );
      expect(
          res,
          const DataModelWrapper<TestModel>.networkDataFailure(
              networkFailure:
                  NetworkFailure.customFailure('SOMETHING WENT WRONG')));
    });
  });
}
