

import 'package:flutter/material.dart';
import 'package:portpoli0/about.dart';
import 'package:portpoli0/my_homepage.dart';
import 'package:portpoli0/profile.dart';
import 'package:portpoli0/projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData (fontFamily: "Soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => const MyHome(),
      'about': (context) => const MyAbout(),
      'projects': (context) => const MyProject(),
      'profile' : (context) => const Profile(),
    },
  ));
}
