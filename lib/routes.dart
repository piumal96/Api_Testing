import 'package:flutter/material.dart';
import 'package:testapp/data/rocket.dart';
import 'package:testapp/pages/about.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/rocket.dart';

final Map<String,WidgetBuilder> routes={
  Home.routename:(_) => Home(),
  About.routeName:(_)=>About(),
  RocketPage.routeName:(_)=>RocketPage(),
};