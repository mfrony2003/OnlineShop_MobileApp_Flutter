import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLine(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numberOfItems >= 0) {
                  numberOfItems--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numberOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        buildOutLine(
            icon: Icons.add,
            press: () {
              numberOfItems++;
            }),
      ],
    );
  }

  SizedBox buildOutLine({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
