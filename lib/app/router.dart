import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp/views/app_view.dart';
import 'package:testapp/views/screens/characters/characters_view.dart';
import 'package:testapp/views/screens/favourites/favourites_view.dart';
import 'package:testapp/views/screens/locations/locations_view.dart';
import 'package:testapp/views/screens/sections/sections_view.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();
  static const String characters = "/";
  static const String favorites = "/favorites";
  static const String locations = "/locations";
  static const String sections = "/sections";
}

final router = GoRouter(
    navigatorKey: _routerKey,
    initialLocation: AppRoutes.characters,
    routes: [
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              AppView(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.characters,
                  builder: (context, state) => const CharactersView(),
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.favorites,
                  builder: (context, state) => const FavouritesView(),
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.locations,
                  builder: (context, state) => const LocationsView(),
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.sections,
                  builder: (context, state) => const SectionsView(),
                )
              ],
            ),
          ])
    ]);
