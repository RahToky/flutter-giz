import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:giz/page/previsions/sections/actuality_section.dart';
import 'package:giz/page/previsions/sections/top_advice_section.dart';
import 'package:giz/page/previsions/sections/trend_section.dart';

import 'sections/map_section.dart';
import 'sections/search_section.dart';

class PrevisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Search(),
          MapSection(),
          ActualitySection(),
          TopAdviceSection(),
          TrendSection(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}




