import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'login_row.dart';

class MVSplashScreen extends StatefulWidget {
  @override
  _MVSplashScreenState createState() => _MVSplashScreenState();
}

class _MVSplashScreenState extends State<MVSplashScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<MVProvider>(context).screenHeightAppbarless =
        (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top);
    Provider.of<MVProvider>(context).screenWidth =
        MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
          child: Container(
        height: Provider.of<MVProvider>(context).screenHeightAppbarless,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/new_logo.png"),
            LoginRow(
              signedIn: false,
              registered: false,
            ),
          ],
        ),
      )),
    );
  }
}
