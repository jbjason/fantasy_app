import 'package:fantasy_app/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyConstants {
  final List<IconData> navIcons = [
    Icons.home_max_outlined,
    CupertinoIcons.suit_diamond,
    Icons.label_important_outline,
    Icons.padding_outlined,
  ];
  final List<String> posters = [
    'assets/images/poster/poster_1.jpg',
    'assets/images/poster/poster_3.jpg',
    'assets/images/poster/poster_2.png',
    'assets/images/poster/poster_4.jpg',
    'assets/images/poster/poster_5.jpg',
  ];
  final List<Product> items = [
    Product(
      title: 'RUINED KING',
      description:
          'The Ruined Kingdom, also known as A Grim reminder of Past Conflict, is a location that appears in Super Mario Odyssey. Located within the greater area of Crumbleden, the Ruined Kingdom is a stormy and mysterious world filled with dilapilated ruins',
      rating: '9.3',
      reviews: '250',
      status: 'Connected',
      img: 'assets/images/wal_1.jpg',
    ),
    Product(
      title: 'FORTNITE',
      description:
          'Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine',
      rating: '9.3',
      reviews: '250',
      status: 'Disconnected',
      img: 'assets/images/wal_5.jpg',
    ),
    Product(
      title: 'DYING LIGHT 2',
      description:
          'Dying Light 2 Stay Human is a 2022 action role-playing game developed and published by Techland. The game is a sequel to Dying Light, and was released for PlayStation 4, PlayStation 5, Windows, Xbox One, and Xbox Series X/S on 4 February 2022. ',
      rating: '9.3',
      reviews: '250',
      status: 'Connected',
      img: 'assets/images/wal_3.jpg',
    ),
    Product(
      title: 'RESIDENT EVIL VILLAGE',
      description:
          'Resident Evil Village is a 2021 survival horror game developed and published by Capcom. It is the sequel to Resident Evil 7: Biohazard',
      rating: '9.3',
      reviews: '250',
      status: 'Disconnected',
      img: 'assets/images/wal_4.jpg',
    ),
    Product(
      title: 'RESIDENT EVIL VILLAGE',
      description:
          'Resident Evil Village is a 2021 survival horror game developed and published by Capcom. It is the sequel to Resident Evil 7: Biohazard',
      rating: '9.3',
      reviews: '250',
      status: 'Disconnected',
      img: 'assets/images/wal_2.jpg',
    ),
  ];
}
