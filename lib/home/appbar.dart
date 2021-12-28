import 'package:flutter/material.dart';

import 'package:my_voice_app/home/home_widget.dart';
import './search.dart';
import './favourites.dart';
import './settings.dart';

AppBar getMVAppBar(BuildContext context) {
  return AppBar(
    title: GestureDetector(
      onTap: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MVHome())),
      child: Row(
        children: [
          Image.asset("./assets/images/new_logo.png", height: 50),
          SizedBox(width: 10),
          Text("MY Voice Canada"),
        ],
      ),
    ),
    backgroundColor: Theme.of(context).primaryColor,
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MVSearch())),
      ),
      IconButton(
        icon: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MVFavs())),
      ),
      IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MVSettings())),
      )
    ],
  );
}