import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';
import 'package:giz/model/Actuality.dart';
import 'package:giz/service/ActualityService.dart';

class ActualitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final actualityList = ActualityService.getActualities();

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15,top:40),
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
      height: 290,
      margin: EdgeInsets.only(left: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: [
              Image.asset(
                actuality.img ?? "assets/images/default.png",
                width: 320,
                height: 180,
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
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
              ),
            ]),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Column(children: [
                Text(actuality.title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                SizedBox(height: 10),
                Row(
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
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
