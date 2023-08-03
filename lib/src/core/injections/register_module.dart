import 'package:book_store/src/routing/app_router.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule{
  @lazySingleton
  AppRouter get appRouter;
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: 'https://assign-api.piton.com.tr/api/rest/'
    )
  );

}