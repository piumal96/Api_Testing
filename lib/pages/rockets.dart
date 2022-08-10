import 'package:flutter/material.dart';
import 'package:testapp/data/rocket.dart';
import 'package:testapp/services/rocket_service.dart';
import 'package:testapp/widget/rocket_list.dart';

class Rockets extends StatelessWidget {
  static const String routeName = '/rockets';

  const Rockets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rockets"),
      ),
      body: FutureBuilder<List<Rocket>?>(
        future: RocketService.getRockets(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error!"),
            );
          } else if (snapshot.hasData) {
            print(snapshot.data);
            List<Rocket>? rockets = snapshot.data;
            return Container(
              child: Rockets != null
                  ? RocketList(rockets: rockets!)
                  : Container(
                      child: Text("Nothing to show Here"),
                    ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
