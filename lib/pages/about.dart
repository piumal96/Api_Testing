import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/pages/home.dart';

class AboutArgument {
  final String name;

  AboutArgument({required this.name});
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  static const routeName = "/About";

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int count = 0;

  void onIncrement() {
    setState(() {
      count++;
    });
  }
  @override
  void initState(){
    super.initState();
  }

  void dispose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final AboutArgument args =
        ModalRoute.of(context)?.settings.arguments as AboutArgument;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              "About Page ${args.name}",
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              "The Count is :$count",
              style: GoogleFonts.chilanka(fontSize: 38),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.routename);
                },
                child: Text("Back to Holme")),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: onIncrement),
    );
  }
}
