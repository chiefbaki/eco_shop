import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true, ),
          AutoRoute(page: BagRoute.page,),
        ]),
        
        // Products page 
        AutoRoute(page: ProductsRoute.page, ),
        // Authentification pages
        AutoRoute(page: ConfirmEmailRoute.page, ),
        AutoRoute(page: LoginRoute.page, initial: true, ),
        AutoRoute(page: RegisterRoute.page,),
      ];
}