// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../features/presentation/screens/detail_episode_info.dart' as _i4;
import '../features/presentation/screens/detail_person_info.dart' as _i3;
import '../features/presentation/screens/list_episodes_screen/list_episodes_screen.dart'
    as _i2;
import '../features/presentation/screens/main_screen.dart' as _i1;

class MobileAppRouter extends _i5.RootStackRouter {
  MobileAppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    EpisodesScreenRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EpisodesScreen());
    },
    DetailPersonScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPersonScreenRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.DetailPersonScreen(key: args.key, id: args.id));
    },
    DetailEposdeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailEposdeScreenRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.DetailEposdeScreen(key: args.key, id: args.id));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainScreenRoute.name, path: '/'),
        _i5.RouteConfig(EpisodesScreenRoute.name, path: '/episodes'),
        _i5.RouteConfig(DetailPersonScreenRoute.name, path: '/detailPerson'),
        _i5.RouteConfig(DetailEposdeScreenRoute.name, path: '/detailEpisode')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i5.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.EpisodesScreen]
class EpisodesScreenRoute extends _i5.PageRouteInfo<void> {
  const EpisodesScreenRoute()
      : super(EpisodesScreenRoute.name, path: '/episodes');

  static const String name = 'EpisodesScreenRoute';
}

/// generated route for
/// [_i3.DetailPersonScreen]
class DetailPersonScreenRoute
    extends _i5.PageRouteInfo<DetailPersonScreenRouteArgs> {
  DetailPersonScreenRoute({_i6.Key? key, required int id})
      : super(DetailPersonScreenRoute.name,
            path: '/detailPerson',
            args: DetailPersonScreenRouteArgs(key: key, id: id));

  static const String name = 'DetailPersonScreenRoute';
}

class DetailPersonScreenRouteArgs {
  const DetailPersonScreenRouteArgs({this.key, required this.id});

  final _i6.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailPersonScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i4.DetailEposdeScreen]
class DetailEposdeScreenRoute
    extends _i5.PageRouteInfo<DetailEposdeScreenRouteArgs> {
  DetailEposdeScreenRoute({_i6.Key? key, required int id})
      : super(DetailEposdeScreenRoute.name,
            path: '/detailEpisode',
            args: DetailEposdeScreenRouteArgs(key: key, id: id));

  static const String name = 'DetailEposdeScreenRoute';
}

class DetailEposdeScreenRouteArgs {
  const DetailEposdeScreenRouteArgs({this.key, required this.id});

  final _i6.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailEposdeScreenRouteArgs{key: $key, id: $id}';
  }
}
