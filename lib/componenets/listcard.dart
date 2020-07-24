import 'package:flutter/material.dart';


class ListCard extends StatelessWidget {
  ListCard({@required this.img, @required this.head, @required this.cont});
  final String img;
  final String head;
  final String cont;

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Column(children: <Widget>[
      Container(
        width: x,
        height: y * 0.119,
        child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: x * 0.04),
            height: y * 0.075,
            width: x * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                shape: BoxShape.rectangle),
            child: Image.asset(img,
            fit: BoxFit.fill,
            ),

          ),
          Container(
              padding: EdgeInsets.only(
                  left: x * 0.05, top: y * 0.03),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: <Widget>[
                  Container(child: Text(head,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                  )),
                  Container(
                    padding: EdgeInsets.only(top: y * 0.01),
                    child: Row(
                      children: <Widget>[
                        Container(child: Text(cont, style: TextStyle(fontSize: 13,color: Colors.black45),)),
                        SizedBox(width: x * 0.3),
                      ],
                    ),
                  ),
                ],
              ))
        ]),
      ),
      Container(padding: EdgeInsets.symmetric(horizontal: x * 0.04),child:Divider(height:3,color: Colors.grey,)),
    ]);
  }
}