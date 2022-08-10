import 'package:flutter/material.dart';
import 'package:testapp/data/rocket.dart';
import 'package:testapp/pages/about.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/rocket.dart';
import 'package:testapp/pages/rockets.dart';

final Map<String,WidgetBuilder> routes={
  Home.routename:(_) => Home(),
  About.routeName:(_)=>About(),
  RocketPage.routeName:(_)=>RocketPage(),
  RocketPage.routeName:(_)=>Rockets(),
};