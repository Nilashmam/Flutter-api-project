
import 'package:flutter/material.dart';
import 'package:api_project/pages/home.dart';
import 'package:api_project/pages/Loading.dart';
import 'package:api_project/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
  '/' : (context) => Loading(),
  '/home' : (context) => Home(),
  '/location' : (context) => ChooseLocation(),
  },
));
