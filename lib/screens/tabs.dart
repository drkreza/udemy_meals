import 'package:flutter/material.dart';
import 'package:udemy_meals/screens/categories.dart';
import 'package:udemy_meals/screens/meals.dart';
import 'package:udemy_meals/widget/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _activePage = const CategoriesScreen();

    var _activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      _activePage = const MealsScreen(
        meals: [],
        title: 'Favorites',
      );
      _activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_activePageTitle),
      ),
      drawer: const MainDrawer(),
      body: _activePage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          ],
          onTap: _selectPage),
    );
  }
}
