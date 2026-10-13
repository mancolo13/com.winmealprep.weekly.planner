import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.calendar_view_week_outlined),
          selectedIcon: const Icon(Icons.calendar_view_week, color: AppTheme.primaryColor),
          label: 'Planner',
        ),
        NavigationDestination(
          icon: const Icon(Icons.shopping_cart_outlined),
          selectedIcon: const Icon(Icons.shopping_cart, color: AppTheme.primaryColor),
          label: 'Grocery',
        ),
        NavigationDestination(
          icon: const Icon(Icons.kitchen_outlined),
          selectedIcon: const Icon(Icons.kitchen, color: AppTheme.primaryColor),
          label: 'Containers',
        ),
        NavigationDestination(
          icon: const Icon(Icons.restaurant_outlined),
          selectedIcon: const Icon(Icons.restaurant, color: AppTheme.primaryColor),
          label: 'Recipes',
        ),

        ],
      ),
    );
  }
}
