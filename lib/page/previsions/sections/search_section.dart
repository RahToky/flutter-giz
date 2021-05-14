import 'package:flutter/material.dart';

import '../../../const/strings.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 68,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              color: Colors.teal,
              width: size.width,
              height: 65,
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/cloud.png',
              width: size.width,
              fit: BoxFit.fill,
            ),
          ),

          /** SEARCH SECTION */
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
                    BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 0.1)
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
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                              fontSize: 14),
                          hintText: Strings.SEARCH_HINT,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          isDense: true,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/ic_search.png',
                      height: 16,
                      fit: BoxFit.fitHeight,
                    ),
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
