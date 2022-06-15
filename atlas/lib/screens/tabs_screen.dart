import 'package:atlas/screens/Calendar.dart';
import 'package:atlas/screens/hava.dart';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';
import '../model/trip.dart';

class TabsScreen extends StatefulWidget {
  List<Trip> favoriteTrips;

  TabsScreen({required this.favoriteTrips});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  late List<Map<String, dynamic>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'Screen': CategoriesScreen(),
        'Title': 'Trip ratings ',
      },
      {
        'Screen': hava(),
        'Title': 'weather',
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'Favorite trips ',
      },
      {
        'Screen': Clander(),
        'Title': 'Calendar',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title']),
      ),
      drawer: const AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Categories',
              backgroundColor: Colors.cyan),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.sunny_snowing),
              label: 'weather',
              backgroundColor: Colors.cyan),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favorite',
              backgroundColor: Colors.cyan),
          const BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined),
              label: 'Calendar',
              backgroundColor: Colors.cyan),
        ],
      ),
    );
  }
}
