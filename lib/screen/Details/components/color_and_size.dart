import 'package:flutter/material.dart';
import 'package:online_store_application/model/Product.dart';

import '../../../constants.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF3D82AE),
                    isSelecred: product.color == Color(0xFF3D82AE),
                  ),
                  ColorDot(
                    color: Color(0xFFe28743),
                    isSelecred: product.color == Color(0xFFe28743),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                    isSelecred: product.color == Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: "Size\n"),
            TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelecred;
  const ColorDot({
    Key key,
    this.color,
    this.isSelecred = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelecred ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
