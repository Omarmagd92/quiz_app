
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';



class AgeCalculator{

  int? Birthyear;
  static int? age;

  AgeCalculator(this.Birthyear){
    print("enter your birth year");
    age=DateTime.now().year-Birthyear!;
    print("the age is$age");

  }

}








