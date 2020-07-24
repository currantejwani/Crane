import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crane/componenets/textcard.dart';
import 'package:crane/componenets/listcard.dart';
import 'package:crane/data.dart';

class FlyPage extends StatefulWidget {
  @override
  _FlyPageState createState() => _FlyPageState();
}

class _FlyPageState extends State<FlyPage> {
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
                  TextCard(icon: Icons.location_on,hintlabel: 'Choose origin'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.airplanemode_active,hintlabel: 'Choose destination'),
                  SizedBox(height: 10),
                  TextCard(icon: Icons.event,hintlabel: 'Select dates'),
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
                ListTile(title: Text('Explore Flights by Destination', style: TextStyle(fontSize: 14, color: Colors.black54),)),
                for (i = 0; i < flylist.length; i++)
                  ListCard(img: flylist[i]['image'],head: flylist[i]['id'], cont: flylist[i]['fly']),
              ],
            ),
          )),
        ],
      ),
    );
  }
}


