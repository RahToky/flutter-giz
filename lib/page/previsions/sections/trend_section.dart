import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';

class TrendSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Column(children: [
      SizedBox(height: 30,),
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Strings.TRENDS,
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text('${Strings.SEE_ALL} ',
                        style: TextStyle(color: primaryColor)),
                    Icon(Icons.arrow_forward, color: primaryColor),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(Strings.FOLLOW_ACTU_ADVICES),

          ],
        ),
      ),
    ]);
  }
}
