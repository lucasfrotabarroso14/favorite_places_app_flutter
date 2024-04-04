

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceDetailScreen extends StatelessWidget {

  const PlaceDetailScreen ({super.key, required this.place});

   final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(place.name,style: TextStyle(color: Colors.white),)),
    );
  }
}
