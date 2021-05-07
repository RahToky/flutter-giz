import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giz/const/strings.dart';

class TrendSection extends StatelessWidget {

  final trends = [
    {"category":"ÉLEVAGE","subtitle":"CONSEIL","title":"Quels instruments pour un élevage durable et rémunérative"},
    {"category":"PÊCHE","subtitle":"ACTUALITÉ","title":"Les facteurs clés de la météo marine pour les pêcheurs du sud"},
    {"category":"MÉTÉO","subtitle":"CONSEIL","title":"Découvrez la météo lors de la fête nationale de Madagascar liberale"}
  ];


  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      SizedBox(
        height: 30,
      ),
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
            SizedBox(height: 10),
            Column(
              children: trends.map((trend){
                return _trendWidget(size, trend['title'], trend['subtitle'], trend['category']);
              }).toList(),
            )
          ],
        ),
      ),
    ]);
  }
}

Widget _trendWidget(Size size, title, subtitle, category) => Padding(
  padding: const EdgeInsets.only(bottom: 8),
  child:   Container(
    height: 110,
    width: size.width * 0.9,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 0.2, spreadRadius: 0.01),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset('assets/images/trend_1.png'),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Text(category,style: TextStyle(fontSize: 12)),
                      elevation: 0,
                      color: Colors.amber,
                    ),
                    Text(subtitle,style: TextStyle(fontSize: 12,color: Colors.grey[600]))
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('Par ',style: TextStyle(color:Colors.grey,fontSize: 12)),
                    Text('MAEP',style: TextStyle(color:Colors.teal,fontSize: 12)),
                    Text(' | ',style: TextStyle(color:Colors.grey[200],fontSize: 12)),
                    Text('07/09/2020',style: TextStyle(color:Colors.grey,fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);