import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_store_application/model/Product.dart';
import 'package:online_store_application/screen/Details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this.product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: this.product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
          height: 20.0,
          width: 20.0,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",
                height: 20.0, width: 20.0, allowDrawingOutsideViewBox: true),
            color: kTextColor,
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg",
                height: 20.0, width: 20.0, allowDrawingOutsideViewBox: true),
            color: kTextColor,
            onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
