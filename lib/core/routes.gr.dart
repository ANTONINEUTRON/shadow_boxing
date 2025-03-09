// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:shadow_boxing/features/game/page/game_config_page.dart' as _i1;
import 'package:shadow_boxing/features/game/page/game_play.dart' as _i2;
import 'package:shadow_boxing/features/home/pages/home_page.dart' as _i3;

/// generated route for
/// [_i1.GameConfigPage]
class GameConfigRoute extends _i4.PageRouteInfo<void> {
  const GameConfigRoute({List<_i4.PageRouteInfo>? children})
    : super(GameConfigRoute.name, initialChildren: children);

  static const String name = 'GameConfigRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.GameConfigPage();
    },
  );
}

/// generated route for
/// [_i2.GamePlayPage]
class GamePlayRoute extends _i4.PageRouteInfo<void> {
  const GamePlayRoute({List<_i4.PageRouteInfo>? children})
    : super(GamePlayRoute.name, initialChildren: children);

  static const String name = 'GamePlayRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.GamePlayPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}
