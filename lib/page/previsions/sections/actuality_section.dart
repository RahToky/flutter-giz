import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';

class ActualitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.only(left: 15, right: 15),
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
            children: [
              ActualityCard(),
              ActualityCard(),
              ActualityCard(),
              ActualityCard(),
            ],
          ),
        ),
        SizedBox(height: 30)
      ],
    );
  }
}

class ActualityCard extends StatelessWidget {
  const ActualityCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 320,
      margin: EdgeInsets.only(left: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('images/agriculture_image.png'),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Text('Une production mondiale largement suffisante',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Par ', style: TextStyle(color: Colors.black54)),
                    Text('MAEP ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text('| ', style: TextStyle(color: Colors.black54)),
                    Text(
                      '05 Mai 2020',
                      style: TextStyle(color: Colors.black54),
                    ),
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
