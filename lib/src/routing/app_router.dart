import 'package:auto_route/auto_route.dart';

import '../features/authentication/presentation/pages/login_page.dart';
import '../features/authentication/presentation/pages/register_page.dart';
import '../features/catologDetail/presentation/catolog_detail_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/productDetail/presentation/product_detail_page.dart';
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
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: CatologDetailRoute.page),
        AutoRoute(page: ProductDetailRoute.page),
      ];
}
