import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page,children: [
          AutoRoute(page: HomeRoute.page),
        ]),
        AutoRoute(page: ProductsRoute.page, initial: true, ),
      ];
}