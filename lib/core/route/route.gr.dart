// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:aviatickets_testapp/features/common/presentation/auto_tab_scaffold_screen/auto_tab_scaffold_screen.dart'
    as _i1;
import 'package:aviatickets_testapp/features/mocking_screens/presentation/screens/hotel_screen.dart'
    as _i2;
import 'package:aviatickets_testapp/features/mocking_screens/presentation/screens/profile_screen.dart'
    as _i4;
import 'package:aviatickets_testapp/features/mocking_screens/presentation/screens/shorter_screen.dart'
    as _i5;
import 'package:aviatickets_testapp/features/mocking_screens/presentation/screens/subscribe_screen.dart'
    as _i6;
import 'package:aviatickets_testapp/features/music_main_page/presentation/main_page/main_screen.dart'
    as _i3;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AutoTabScaffoldRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AutoTabScaffoldScreen(),
      );
    },
    HotelRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HotelScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
      );
    },
    ShorterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ShorterScreen(),
      );
    },
    SubscribeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SubscribeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AutoTabScaffoldScreen]
class AutoTabScaffoldRoute extends _i7.PageRouteInfo<void> {
  const AutoTabScaffoldRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AutoTabScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutoTabScaffoldRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HotelScreen]
class HotelRoute extends _i7.PageRouteInfo<void> {
  const HotelRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ShorterScreen]
class ShorterRoute extends _i7.PageRouteInfo<void> {
  const ShorterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ShorterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShorterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SubscribeScreen]
class SubscribeRoute extends _i7.PageRouteInfo<void> {
  const SubscribeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SubscribeRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscribeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
