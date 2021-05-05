import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';

class MyAppBar {



  static Widget create() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leading: Icon(Icons.menu),
      title: Image.asset('assets/images/logo.png',height: 50,),

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
