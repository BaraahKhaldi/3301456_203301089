// ignore_for_file: prefer_const_constructors

import 'package:atlas/app_data.dart';

import 'package:atlas/model/trip.dart';
import 'package:atlas/screens/category_trips_screen.dart';
import 'package:atlas/screens/filters_screen.dart';
import 'package:atlas/screens/registration_screen.dart';
import 'package:atlas/screens/signin_screen.dart';
import 'package:atlas/screens/tabs_screen.dart';
import 'package:atlas/screens/trip_detail_screen.dart';
import 'package:atlas/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../model/HAVA.dart';
import 'package:atlas/screens/hava.dart';
import 'package:atlas/screens/welcome_screen.dart';
import 'package:atlas/screens/signin_screen.dart';
import 'package:atlas/screens/registration_screen.dart';
import 'package:atlas/widgets/my_button.dart';

void main() async {
  print('dfdsfdsfsdd');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'family': false,
  };

  List<Trip> _availableTrips = Trips_data;
  List<Trip> _favoriteTrips = [];

  get ctx => null;

  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableTrips = Trips_data.where((trip) {
        if (_filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_filters['family'] == true && trip.isForFamilies != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _manageFavorite(String tripId) {
    final existingIndex =
        _favoriteTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(
          Trips_data.firstWhere((trip) => trip.id == tripId),
        );
      });
    }
  }

  bool _isFovarite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atlas',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith()),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomeScreen(),
        '/signin_screen': (ctx) => SignInScreen(),
        '/registration_screenn': (ctx) => RegistrationScreen(),
        'categories_screen': (coctxntext) => categories_screen(),
        '/TabsScreen': (context) => TabsScreen(favoriteTrips: _favoriteTrips),
        CategoryTripsScreen.screenRoute: (ctx) =>
            CategoryTripsScreen(_availableTrips),
        TripDetailScreen.screenRoute: (ctx) =>
            TripDetailScreen(_manageFavorite, _isFovarite),
        FiltersScreen.screenRoute: (ctx) =>
            FiltersScreen(_filters, _changeFilters),
      },
    );
  }

  categories_screen() {}

  // ignore: non_constant_identifier_names

}

mixin GlobalCupertinoLocalizations {
  static var delegate;
}

mixin GlobalWidgetsLocalizations {
  static var delegate;
}

mixin GlobalMaterialLocalizations {
  static var delegate;
}
