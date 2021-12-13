import 'package:flutter/material.dart';
import 'package:travel_app/ciudad.dart';

class ModelCard extends StatelessWidget {

  final List<Ciudad> ciudades =[
    Ciudad(1, "New York,Estados Unidos", 1500,'/img/eeu.jpg'),
    Ciudad(2, "Paris,France", 2000,'/img/paris.jpg'),
    Ciudad(3,  "Rome,Italy", 2200,'/img/roma.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ciudades.length,
        itemBuilder: (context,index){
          final ciudad = ciudades[index];
          return Text(ciudad.getNombre);
        }
        ),
    );
}
}