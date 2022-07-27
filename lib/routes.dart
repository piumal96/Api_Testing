import 'package:flutter/material.dart';
import 'package:testapp/pages/about.dart';
import 'package:testapp/pages/home.dart';

final Map<String,WidgetBuilder> routes={
  Home.routename:(_) => Home(),
  About.routeName:(_)=>About(),
};