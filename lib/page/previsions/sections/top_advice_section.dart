import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:giz/const/strings.dart';

class TopAdviceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Column(children: [
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.TOP_5_ADVICES_CATEGORY,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            _getTopListWidget(),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                height: 40,
                // color: Colors.grey[200],
                child: Center(
                  child: Text(
                    'Voir tout',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal[700]),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}

// TOP LIST WIDGET
Widget _getTopListWidget() {
  final topList = [
    {'img': 'top_1.png', 'title': 'Agriculture'},
    {'img': 'top_2.png', 'title': 'Santé'},
    {'img': 'top_3.png', 'title': 'Pêche'},
    {'img': 'top_4.png', 'title': 'Élevage'},
    {'img': 'top_5.png', 'title': 'Météo'},
  ];
  int topId = 0;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: topList.map((top) {
        topId++;
        return Row(
          children: [
            Column(children: [
              Image.asset('assets/images/${top['img']}', width: 69),
              SizedBox(height: 7),
              Text("${top['title']}", style: TextStyle(fontSize: 12)),
            ]),
            if (topId < topList.length)
              SizedBox(
                width: 10,
              )
          ],
        );
      }).toList(),
    ),
  );
}
