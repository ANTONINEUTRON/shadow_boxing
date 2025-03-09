import 'package:auto_route/auto_route.dart';
import 'package:shadow_boxing/core/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    // AutoRoute(page: GameConfigRoute.page),
    // AutoRoute(page: GamePlayRoute.page),
  ];
}
