import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places, required this.onSelectPlace});

  final List<Place> places;

  final void  Function(Place) onSelectPlace;



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) =>
            InkWell(
              onTap:() => onSelectPlace(places[index]),
              child: ListTile(
                title: Text(places[index].name,style: TextStyle(color: Colors.white)),
              ),
            )

    );
  }
}
