import 'package:flutter/material.dart';
import 'package:crane/componenets/textcard.dart';
import 'package:crane/componenets/listcard.dart';
import 'package:crane/data.dart';

class EatPage extends StatefulWidget {
  @override
  _EatPageState createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  int i;
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff5d1049),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: x * 0.04),
            child: Container(
              child: Column(
                children: <Widget>[
                  TextCard(icon: Icons.person, hintlabel: 'Diners'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.event, hintlabel: 'Select date'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.schedule, hintlabel: 'Select time'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.local_dining, hintlabel: 'Select location'),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: ListView(
              children: <Widget>[
                ListTile(title: Text('Explore Restaurants by Destination', style: TextStyle(fontSize: 14, color: Colors.black54),)),
                for (i = 0; i < eatlist.length; i++)
                ListCard(img: eatlist[i]['image'],head: eatlist[i]['id'], cont: eatlist[i]['restro']),
              ],
            ),
          ))
        ],
      ),
    );
  }
}


