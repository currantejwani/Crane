import 'package:flutter/material.dart';
import 'fly_page.dart';
import 'sleep_page.dart';
import 'eat_page.dart';


class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> with SingleTickerProviderStateMixin {
  TabController tabView;
  String name = "";

  @override
  void initState() {
    tabView = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff5d1049),
        leading: Image.asset('assets/Icon.png'),
        title: getTabBar(),
      ),
      body: getBody(),
    );
  }

  getTabBar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white60,
      //indicatorColor: Colors.black,
      controller: tabView,
      tabs: [
        Tab(icon: getTabHeader("FLY")),
        Tab(icon: getTabHeader("SLEEP")),
        Tab(icon: getTabHeader("EAT")),
      ],
    );
  }

  getBody() {
    return TabBarView(
      controller: tabView,
      children: [
        FlyPage(),
        SleepPage(),
        EatPage(),
      ],
    );
  }

  getTabHeader(String field) {
    return Text(field, style: TextStyle(
         fontWeight: FontWeight.bold, fontSize: 12.5),);
  }
}
