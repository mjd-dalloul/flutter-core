import 'package:dio/dio.dart';
import 'package:example/application/post_bloc/post_bloc.dart';
import 'package:example/domain/repository/i_post_repository.dart';
import 'package:example/infrastructure/local_datasource/post_local_datasource.dart';
import 'package:example/infrastructure/remote_datasource/post_remote_datasource.dart';
import 'package:example/infrastructure/repository/post_repository.dart';
import 'package:flutter_core/utils/interceptors/json_decoder_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final GetIt sl = GetIt.instance;

void inject() {
  _injectDio();
  sl.registerLazySingleton(
    () => Logger(
      printer: PrettyPrinter(),
    ),
  );
  sl.registerLazySingleton(() => PostRemoteDataSource(sl(), sl()));
  sl.registerLazySingleton(() => PostLocalDataSource(logger: sl()));
  sl.registerLazySingleton<IPostRepository>(
      () => PostRepository(sl(), sl(), sl()));
  sl.registerLazySingleton(() => PostBloc(sl(), sl()));
  sl<Dio>().interceptors.addAll(
    <Interceptor>[
      JsonDecoderInterceptor(),
    ],
  );
}

void _injectDio() {
  final Dio dio = Dio(BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'charset': 'utf-8',
        'Accept-Charset': 'utf-8',
      },
      responseType: ResponseType.plain));
  sl.registerLazySingleton(() => dio);
}
