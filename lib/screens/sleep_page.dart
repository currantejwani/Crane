import 'package:flutter/material.dart';
import 'package:crane/componenets/textcard.dart';
import 'package:crane/componenets/listcard.dart';
import 'package:crane/data.dart';

class SleepPage extends StatefulWidget {
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
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
                  TextCard(icon: Icons.person,hintlabel: 'Travellers'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.event,hintlabel: 'Select dates'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.hotel,hintlabel: 'Select location',),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
            ),
            child: ListView(
              children: <Widget>[
                ListTile(title: Text('Explore Properties by Destination', style: TextStyle(fontSize: 14, color: Colors.black54),)),
                for (i = 0; i < sleeplist.length; i++)
                  ListCard(img: sleeplist[i]['image'],head: sleeplist[i]['id'], cont: sleeplist[i]['prop']),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
