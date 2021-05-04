import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';

class MyAppBar {



  static Widget create() {
    return AppBar(
      centerTitle: true,
      leading: Icon(Icons.menu),
      title: Padding(
        padding: EdgeInsets.all(60),
        child: Image.asset('images/logo.png'),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.star,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }
}
