import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  final defaultColor = Colors.black54;
  final selectedColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: selectedColor,
      labelColor: selectedColor,
      labelPadding: EdgeInsets.only(bottom: 10),
      unselectedLabelColor: defaultColor,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: selectedColor, width: 3.0),
        insets: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 60),
      ),
      tabs: [
        {'icon': Icons.cloud, 'label': 'Prévisions'},
        {'icon': Icons.file_present, 'label': 'Actualités'},
        {'icon': Icons.book_outlined, 'label': 'Conseils'},
        {'icon': Icons.warning_amber_rounded, 'label': 'Alertes'},
      ].map((item) {
        return Container(
          height: 51,
          child: Center(
            child: Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon']),
                  Text(
                    item['label'],
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
