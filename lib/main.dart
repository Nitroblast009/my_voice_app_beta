import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import './welcome/splashscreen.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => MVProvider(),
      child: MVApp(),
    ));

class MVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MY Voice App",
      theme: ThemeData(
        primaryColor: HexColor("139DA4"),
        fontFamily: "RobotoMono",
      ),
      home: MVASplashScreen(),
    );
  }
}

class MVProvider extends ChangeNotifier {
  double screenHeightAppbarless = 0;
  double screenWidth = 0;
  double buttonFontSize = 24;

  String userEmail = "";
  String userPassword = "";
}
