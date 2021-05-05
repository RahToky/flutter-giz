import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:giz/page/previsions/sections/actuality_section.dart';
import 'package:giz/page/previsions/sections/top_advice_section.dart';

import 'sections/map_section.dart';
import 'sections/search_section.dart';

class PrevisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Search(),
          SizedBox(height: 8),
          MapSection(),
          ActualitySection(),
          TopAdviceSection(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}




