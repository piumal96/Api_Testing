import 'package:flutter/material.dart';
import 'package:testapp/pages/home.dart';

class AboutArgument{
  final String name;

  AboutArgument({required this.name});
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  static const routeName="/About";

  @override
  Widget build(BuildContext context) {
    final AboutArgument args = ModalRoute.of(context)?.settings.arguments as AboutArgument;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("About Page ${args.name}",style: Theme.of(context).textTheme.headline3,),
            OutlinedButton(onPressed: (){
              Navigator.of(context).pushNamed(Home.routename);
            }, child: Text("Back to Holme")),
          ],
        ),
      ),

    );
  }
}
