import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const AppView({super.key, required this.navigationShell});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarView(),
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(color: Theme.of(context).colorScheme.primary);
          } else {
            return TextStyle(color: Theme.of(context).colorScheme.tertiary);
          }
        })),
        child: NavigationBar(
            selectedIndex: navigationShell.currentIndex,
            indicatorColor: Colors.transparent,
            onDestinationSelected: navigationShell.goBranch,
            destinations: [
              _menuItem(context,
                  index: 0,
                  currentIndex: navigationShell.currentIndex,
                  icon: Icons.face,
                  label: 'Karakterler'),
              _menuItem(context,
                  index: 1,
                  currentIndex: navigationShell.currentIndex,
                  icon: Icons.bookmark,
                  label: 'Favoriler'),
              _menuItem(context,
                  index: 2,
                  currentIndex: navigationShell.currentIndex,
                  icon: Icons.location_on,
                  label: 'Konumlar'),
              _menuItem(context,
                  index: 3,
                  currentIndex: navigationShell.currentIndex,
                  icon: Icons.menu,
                  label: 'Bölümler'),
            ]),
      ),
    );
  }

  Widget _menuItem(BuildContext context,
      {required int index,
      required int currentIndex,
      required String label,
      required IconData icon}) {
    return NavigationDestination(
        icon: Icon(
          icon,
          color: currentIndex == index
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.tertiary,
        ),
        label: label);
  }

  AppBar _appBarView() {
    return AppBar(
      title: const Text(
        'Rick and Morty',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
    );
  }
}
