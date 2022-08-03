import 'package:flutter/material.dart';
import 'package:testapp/pages/about.dart';

class Home extends StatelessWidget {
  final Function(bool)? toggleDarkMode;
  final bool? isDark;

  const Home({Key? key, this.toggleDarkMode,this.isDark}) : super(key: key);
  static const routename = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Test App"),
        actions: [
          Switch(value: isDark?? false, onChanged: toggleDarkMode)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              "Hello  Rocutes",
              style: TextStyle(fontSize: 17),
            ),
            Text("Welcome to our live show"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(About.routeName,
                      arguments: AboutArgument(name: "Deves"));
                },
                child: Text("About")),
          ],
        ),
      ),
    );
  }
}
