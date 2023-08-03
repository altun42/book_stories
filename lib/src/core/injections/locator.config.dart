// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/repositories/login_repository_impl.dart'
    as _i6;
import '../../features/authentication/data/repositories/register_repository_impl.dart'
    as _i9;
import '../../features/authentication/domain/repositories/user_login_repository.dart'
    as _i5;
import '../../features/authentication/domain/repositories/user_register_repository.dart'
    as _i8;
import '../../features/catalog/data/repository/category_repository_impl.dart'
    as _i11;
import '../../features/catalog/domain/category_repository.dart' as _i10;
import '../../routing/app_router.dart' as _i3;
import '../network_manager/network_manager.dart' as _i7;
import 'register_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.factory<_i5.LoginRepository>(
        () => _i6.LoginRepositoryImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i7.NetworkManager>(
        () => _i7.NetworkManagerImpl(gh<_i4.Dio>()));
    gh.factory<_i8.RegisterRepository>(
        () => _i9.RegisterRepositoryImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i10.CategoryRepository>(
        () => _i11.CategoryRepositoryImpl(gh<_i7.NetworkManager>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {
  @override
  _i3.AppRouter get appRouter => _i3.AppRouter();
}
