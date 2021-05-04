import 'package:flutter/material.dart';

class MapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/mada.png', height: 380, fit: BoxFit.fill);
  }
}


Widget _dateWidget() => Text(
  'Jeudi, 28 Nov',
  style: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  ),
);

Widget _pageIndicator() => Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(Icons.circle, color: Colors.grey, size: 15),
      Icon(Icons.remove_circle_outline, color: Colors.grey, size: 15),
      Icon(Icons.remove_circle_outline, color: Colors.grey, size: 15),
      Icon(Icons.remove_circle_outline, color: Colors.grey, size: 15),
      Icon(Icons.remove_circle_outline, color: Colors.grey, size: 15),
      Icon(Icons.remove_circle_outline, color: Colors.grey, size: 15),
    ],
  ),
);