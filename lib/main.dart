import 'package:flutter/material.dart';

import 'const/strings.dart';
import 'page/actualites/actualities_page.dart';
import 'page/advices/advices_page.dart';
import 'page/includes/appbar_page.dart';
import 'page/alerts/alerts_page.dart';
import 'page/includes/bottom_tab.dart';
import 'page/previsions/previsions_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: MyAppBar.create(),
          body: TabBarView(
            children: [
              PrevisionPage(),
              ActualityPage(),
              AdvicePage(),
              AlertsPage(),
            ],
          ),
          bottomNavigationBar: BottomTabBar(),
        ),
      ),
    );
  }
}
