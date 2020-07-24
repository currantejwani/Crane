import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  TextCard({@required this.icon, @required this.hintlabel});
  final IconData icon;
  final String hintlabel;

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Container(
        width: x,
        height: y * 0.068,
        decoration: BoxDecoration(
          color: Color(0xff720d5d),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 8),
          child:Row(
            children: <Widget>[
              Icon(icon,color: Colors.white54,),
              SizedBox(width: 9),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: x*0.04, left: 0),
                      child: TextField(
                        cursorColor: Color(0xffe30425),
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: hintlabel,border: InputBorder.none,hintStyle: TextStyle(color: Colors.white54),labelStyle: TextStyle(color: Colors.white)),
                      )))
            ],
          ),
        ));
  }
}