import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';
import 'package:giz/model/Actuality.dart';
import 'package:giz/service/dataProvider.dart';

class ActualitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final actualityList = DataProvider.getActualities();

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.LAST_ACTUALITIES,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text('${Strings.SEE_ALL} ',
                      style: TextStyle(color: primaryColor)),
                  Icon(Icons.arrow_forward, color: primaryColor),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: actualityList.map((actuality) {
              return ActualityCard(
                actuality: actuality,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 30)
      ],
    );
  }
}

class ActualityCard extends StatelessWidget {
  final Actuality actuality;

  const ActualityCard({Key key, @required this.actuality});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 280,
      margin: EdgeInsets.only(left: 10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
            side: BorderSide(color: Colors.grey[200], width: 0.8)),
        color: Colors.white,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              child: Stack(children: [
                Image.asset(
                  actuality.img ?? "assets/images/default.png",
                  width: 320,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(3)),
                      color: actuality.categoryColor,
                    ),
                    child: Text(
                      actuality.category,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ),

            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      top:10,left: 15, right: 15,
                      child: Text(actuality.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                    ),
                    Positioned(
                      left:15,
                      bottom: 17,
                      child: Row(
                        children: [
                          Text('Par ', style: TextStyle(color: Colors.black54)),
                          Text('${actuality.author} ',
                              style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                          Text('| ', style: TextStyle(color: Colors.black54)),
                          Text('${actuality.date}',
                                style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
