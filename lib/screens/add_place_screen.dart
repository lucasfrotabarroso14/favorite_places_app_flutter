import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {

  late String _title='';

  void _saveItem(BuildContext context){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      Place newPlace = Place(id:'1',name: _title);
      Navigator.of(context).pop(newPlace);
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new place'),
      ),
      body: Form(
        key: _formKey,

        child: Column(
          children: [
           TextFormField(
             style: TextStyle(color: Colors.white),

             validator: (value){
               if(value == null || value.isEmpty ){
                 return 'Cant be null';
               }
               return null;
             },
             decoration: InputDecoration(

               label: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Title'),


               ),


             ),
             onSaved: (value){
               _title = value!;
             },
           ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38,
                ),
                

                  child: Row(
                    children: [
                      IconButton(onPressed: (){_saveItem(context);}, icon: Icon(Icons.add,color: Colors.deepPurple[100],)
                      ),
                      Text('Add Place',style: TextStyle(color: Colors.deepPurple[100]),)
                    ],
                  )
              ),
            )
          ],
        ),

      ),
    );
  }
}
