import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/chooseLocation.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
      routes: {
        '/': (context) => Loading() ,
        '/home': (context) => Home() ,
        '/chooseLoc': (context) => ChooseLocation()
      },
    ));
