import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 68,
      color: Colors.teal,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/cloud.png',
              width: size.width,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 32,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 3, spreadRadius: 0.1),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          hintText: 'Rechercher une ville, une région...',
                          contentPadding:EdgeInsets.symmetric(vertical: 11,horizontal: 15),
                          isDense: true,
                        ),
                      ),
                    ),
                    Image.asset('assets/images/ic_search.png',height: 20,fit: BoxFit.fitHeight,),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
