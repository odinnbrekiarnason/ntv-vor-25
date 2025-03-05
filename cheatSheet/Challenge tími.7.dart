import 'package:ntv_vor_25/methods.dart';
import 'dart:math';

void main(){
  String ape = ("area of rectangle =");
  ape = ape + " " + calcRectangleArea(ape); // error fyrir clacRectangleArea
}


calcRectangleArea(String calc){
  int height = 8;
  int lengt = 5;
  int area = height * lengt;
  print(area);
}