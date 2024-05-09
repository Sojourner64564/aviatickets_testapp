import 'package:auto_route/auto_route.dart';
import 'package:aviatickets_testapp/core/route/route.gr.dart';
import 'package:injectable/injectable.dart';



@lazySingleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
        page: AutoTabScaffoldRoute.page,
        initial: true,
    children: [
      AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(
                page: HardRoutesRoute.page),
            AutoRoute(
                page: AnywhereToGoRoute.page),
            AutoRoute(
                page: WeekendRoute.page),
            AutoRoute(
                page: HotTicketsRoute.page),
          ]
      ),
      AutoRoute(
          page: HotelRoute.page),
      AutoRoute(
          page: ShorterRoute.page),
      AutoRoute(
          page: SubscribeRoute.page),
      AutoRoute(
          page: ProfileRoute.page),
    ]),
  ];
}