import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/network_manager/network_manager.dart';
import '../features/authentication/presentation/pages/login_page.dart';
import '../features/authentication/presentation/pages/register_page.dart';
import '../features/catalog/data/model/category_model/category_model.dart';
import '../features/catalog/data/model/product_model.dart/product_model.dart';
import '../features/catalog/presentation/pages/catalog_page.dart';
import '../features/catologDetail/presentation/catolog_detail_page.dart';
import '../features/productDetail/presentation/page/product_detail_page.dart';
import '../features/splash/presentation/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View|Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: CatalogRoute.page),
        AutoRoute(page: CatologDetailRoute.page),
        AutoRoute(page: ProductDetailRoute.page),
      ];
}
