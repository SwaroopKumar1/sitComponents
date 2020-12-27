import 'package:flutter/material.dart';
import 'package:sit_app/navigation_service/routes.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pop();
      Navigator.pushNamed(context, Routes.start);
    });
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 120,
        ),
        Center(
          child: Image(
            image: AssetImage("assets/images/sitlogo.png"),
            width: 150,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Image(
          image: AssetImage("assets/images/sittxt.png"),
          width: 500,
        ),
        SizedBox(
          height: 10,
        ),
        CircularProgressIndicator(
          strokeWidth: 5,
        ),
      ]),
    );
  }
}
