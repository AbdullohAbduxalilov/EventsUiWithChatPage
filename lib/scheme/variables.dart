import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Variables {
  // For screen controll :
  int currentScreenIndex = 0;



  final List<Widget> screens = [
 //   HomeScreen()
  ];

 // DatabaseHelper? database;


  // For theme controll :
  String _themeMode = 'dark';

  // Colors :
  // Color kPrimaryColor = kDarkPrimaryColor;
  // Color kPrimaryLightColor = kDarkPrimaryLightColor;
  // Color kTextColor = kDarkTextColor;

  // For change theme COlors :
  // void changeTheme() {
  //   if (_themeMode == 'light') {
  //     kPrimaryColor = kDarkPrimaryColor;
  //     kPrimaryLightColor = kDarkPrimaryLightColor;
  //     kTextColor = kDarkTextColor;
  //     _themeMode = 'dark';
  //   } else if (_themeMode == 'dark'){
  //     kPrimaryColor = kLightPrimaryColor;
  //     kPrimaryLightColor = kLightPrimaryLightColor;
  //     kTextColor = kLightTextColor;
  //     _themeMode = 'light';
  //   }
  // }
}