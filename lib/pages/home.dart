import 'package:flutter/material.dart';
import 'package:testapp/pages/about.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const routename="/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Api Test App"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(width: double.infinity,),
            Text("Hello  Rocutes",style: TextStyle(fontSize: 17),),
            Text("Welcome to our live show"),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(About.routeName,arguments: AboutArgument(name: "Deves"));
            }, child: Text("About")),
          ],
        ),
      ),
    );
  }
}
