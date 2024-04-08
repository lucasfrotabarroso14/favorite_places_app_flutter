

import 'dart:io';

import 'package:riverpod/riverpod.dart';

import '../models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>>{

  UserPlacesNotifier() : super([]); // o estado inicial é uma lista vazia []


  addPlace(String title, File image,PlaceLocation location){
    final newPlace = Place(title: title,image: image,location: location);
    state = [newPlace,...state];

  }



}



final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier,List<Place>>(
        (ref) => UserPlacesNotifier()
);