import 'package:flutter/material.dart';
import 'package:testapp/pages/rocket.dart';

import '../data/rocket.dart';

class RocketList extends StatelessWidget {
  late final List<Rocket> rockets;

  RocketList({Key? key, required this.rockets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: rockets.length,
        itemBuilder: (context, index) {
          Rocket rocket = rockets[index];
          return Card(
              child: ListTile(
            title:
                Text(rocket.name, style: Theme.of(context).textTheme.headline4),
            subtitle: Text(rocket.description),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){
                Navigator.of(context).pushNamed(RocketPage.routeName,arguments: RocketArgument(rocket));
                },
          )
          );
        });
  }
}
