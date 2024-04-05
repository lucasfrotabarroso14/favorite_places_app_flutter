

import 'dart:io';

import 'package:riverpod/riverpod.dart';

import '../models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>>{

  UserPlacesNotifier() : super([]); // o estado inicial é uma lista vazia []


  addPlace(String title, File image){
    final newPlace = Place(title: title,image: image);
    state = [newPlace,...state];

  }



}



final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier,List<Place>>(
        (ref) => UserPlacesNotifier()
);