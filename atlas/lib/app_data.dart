import 'package:flutter/material.dart';
import './model/category.dart';
import './model/trip.dart';

const List Categories_data = const [
  Category(
    id: 'c1',
    title: 'mountains',
    imageUrl: 'assets/image/dag.png',
  ),
  Category(
    id: 'c2',
    title: 'lakes',
    imageUrl: 'assets/image/gol.png',
  ),
  Category(
    id: 'c3',
    title: 'beaches',
    imageUrl: 'assets/image/beach.png',
  ),
  Category(
    id: 'c4',
    title: 'Desert',
    imageUrl: 'assets/image/desert.png',
  ),
  Category(
    id: 'c5',
    title: ' Historic Cities',
    imageUrl: 'assets/image/tarihi.png',
  ),
  Category(
    id: 'c6',
    title: 'other',
    imageUrl: 'assets/image/other.png',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: ' Alps',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/image/alp.png',
    duration: 20,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: ' the mountains of the south',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/image/dapp.png',
    duration: 10,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'high mountains ',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl: 'assets/image/high.png',
    duration: 45,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: ' big lake',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl: 'assets/image/biglake.png',
    duration: 60,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'small lakes ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/smalllake.png',
    duration: 15,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Emerald Lake ',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'assets/image/emerald.png',
    duration: 240,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: ' first beach',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl: 'assets/image/firstbeach.png',
    duration: 20,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: ' Big Beach',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl: 'assets/image/bigbeach.png',
    duration: 35,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: ' rock beach',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl: 'assets/image/rock.png',
    duration: 45,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: ' Big Desert',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/bigdesert.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'Western Desert ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/western.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'sandy desert ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/sandy.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'first city ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/first.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: ' second city',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/second.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: ' old City',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/old.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: ' Skilling',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/skilling.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
      'c2',
    ],
    title: ' jet skiting',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'assets/image/jet.png',
    duration: 30,
    activities: [
      '   Visit archaeological sites',
      '  A walking tour ',
      '   Visit the malls for shopping',
      '  have lunch',
      '  Enjoy the beautiful scenery'
    ],
    program: [
      'Roaming in the area',
      'Visiting tourist places',
      'Buy some souvenirs',
      'Go to famous restaurants',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
