import 'package:flutter/cupertino.dart';

class Ciudad{
  late int id;
  late String nombre;
  late int precio;
  late String imagen;

Ciudad(int id,String nombre,int precio,String imagen){
  this.id = id;
  this.nombre = nombre;
  this.precio = precio;
  this.imagen = imagen;
}

int get getId{
  return id;
}

void set setId(int id){
  this.id = id;
}

int get getPrecio{
  return precio;
}

void set setPrecio(int precio){
  this.precio = precio;
}

String get getNombre{
  return nombre;
}

void set setNombre(String nombre){
  this.nombre = nombre;
}

String get getImagen{
  return imagen;
}

void set setImagen(String imagen){
  this.imagen = imagen;
}

}