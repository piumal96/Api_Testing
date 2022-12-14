import 'package:flutter/material.dart';
import 'package:testapp/data/rocket.dart';
import 'package:testapp/services/rocket_service.dart';

class RocketArgument {
  final Rocket rocket;

  RocketArgument(this.rocket);
}

class RocketPage extends StatelessWidget {
  static const routeName = '/rockets';

  const RocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RocketArgument args =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as RocketArgument;

    final Rocket rocket = args.rocket;


    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Rocket",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              rocket.name ,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              rocket.description ,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Image.network(rocket.image )
          ],
        ),
    );
  }
}
