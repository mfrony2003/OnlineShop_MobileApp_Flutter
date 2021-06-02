import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class manTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: size.height * 0.27,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(54),
                  topRight: Radius.circular(54),
                  bottomLeft: Radius.circular(54),
                  bottomRight: Radius.circular(54))),
        ),
        Container(
          height: size.height * 0.27,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(54),
                  topRight: Radius.circular(54),
                  bottomLeft: Radius.circular(54),
                  bottomRight: Radius.circular(54))),
        ),
        Container(
          height: size.height * 0.32,
          decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(54),
                  topRight: Radius.circular(54),
                  bottomLeft: Radius.circular(54),
                  bottomRight: Radius.circular(54))),
        ),
      ],
    ));
  }
}
