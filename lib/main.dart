import 'package:flutter/material.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/routes.dart';
import 'package:testapp/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void toggleDarkMode( bool newState){
    setState((){
      isDark=newState;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: isDark? ThemeMode.dark:ThemeMode.light,
      // theme: ThemeData(
      //
      //   primarySwatch: Colors.amber,
      //
      // ),
      // initialRoute: Home.routename,
       routes: routes,
      home: Home(isDark: isDark,toggleDarkMode: toggleDarkMode,),
    );
  }
}
