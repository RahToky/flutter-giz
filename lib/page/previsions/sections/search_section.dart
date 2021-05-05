import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 110,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                  width: size.width, height: 70, color: Colors.teal)),
          Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/cloud.png',
                width: size.width,
              )),
        ],
      ),
    );
  }
}
