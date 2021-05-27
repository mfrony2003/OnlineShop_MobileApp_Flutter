import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_store_application/constants.dart';
import 'package:online_store_application/model/Product.dart';
import 'package:online_store_application/screen/Details/components/cart_counter.dart';
import 'package:online_store_application/screen/Details/components/color_and_size.dart';
import 'package:online_store_application/screen/Details/components/description.dart';
import 'package:online_store_application/screen/Details/components/product_titile_withimage.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.4),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(54))),
                child: Column(
                  children: <Widget>[
                    ColorandSize(product: product),
                    Description(product: product),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CartCounter(),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Color(0XFFFF6364), shape: BoxShape.circle),
                          child: SvgPicture.asset("/assets/icons/heart.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ProductTitleWithWidget(product: product)
            ],
          ),
        )
      ],
    ));
  }
}
