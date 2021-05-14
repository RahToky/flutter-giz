import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giz/const/strings.dart';

class MyAppBar {
  static Widget create() {
    return AppBar(
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.teal,
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 0,
      centerTitle: true,
      leading: Icon(Icons.menu),
      title: Image.asset(
        'assets/images/logo.png',
        height: 50,
      ),
      backgroundColor: Colors.teal,
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            'assets/images/ic_start.png',
            height: 25,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }
}
