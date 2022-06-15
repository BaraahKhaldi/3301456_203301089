import 'package:flutter/material.dart';
import '../model/trip.dart';
import '../widgets/trip_item.dart';

class CategoryTripsScreen extends StatefulWidget {
  static const screenRoute = '/categroy-trips';

  final List<Trip> availableTrips;

  CategoryTripsScreen(this.availableTrips);

  @override
  _CategoryTripsScreenState createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late String _categoryTitle;

  String get categoryTitle => _categoryTitle;

  set categoryTitle(String categoryTitle) {
    _categoryTitle = categoryTitle;
  }

  late List<Trip> displayTrips;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title'] ?? "title";
    displayTrips = widget.availableTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
            // removeItem: _removeTrip,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
