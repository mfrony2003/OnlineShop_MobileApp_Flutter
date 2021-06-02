import 'package:flutter/material.dart';

import '../../../constants.dart';

class MainTabItem extends StatelessWidget {
  final Function press;
  final String inmagePath;
  const MainTabItem({
    Key key,
    this.press,
    this.inmagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(this.inmagePath)),
              color: Colors.white30,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(54))),
        ));
  }
}
