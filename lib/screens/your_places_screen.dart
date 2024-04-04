
import 'package:favorite_places_app/screens/place_detail_screen.dart';
import 'package:favorite_places_app/widgets/places_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/place.dart';
import 'add_place_screen.dart';

class YourPlacesScreen extends StatefulWidget {

  const YourPlacesScreen({super.key, required this.places});
  final List<Place> places;







  @override
  State<YourPlacesScreen> createState() => _YourPlacesScreenState();
}


class _YourPlacesScreenState extends State<YourPlacesScreen> {

  _selectPlace(BuildContext context, Place place){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => PlaceDetailScreen(place: place))
    );
  }



  void _addPlace(BuildContext context) async {

    var newPlace = await Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => AddPlaceScreen())
    );
    if (newPlace != null){
      setState(() {
        widget.places.add(newPlace);

      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: [
          IconButton(onPressed: () => _addPlace(context),
            icon: Icon(Icons.add),



          )
        ],
      ),
      body:Column(children: [
        
        Expanded(child: PlacesList(
          places: widget.places,
          onSelectPlace:(place) => _selectPlace(context,place)))
      ],)
    );
  }
}
