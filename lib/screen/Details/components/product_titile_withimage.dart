import 'package:flutter/material.dart';
import 'package:online_store_application/model/Product.dart';

import '../../../constants.dart';

class ProductTitleWithWidget extends StatelessWidget {
  const ProductTitleWithWidget({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Arristocreate Hand bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                  text: "\$${product.price}",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ])),
              SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ))
            ],
          )
        ],
      ),
    );
  }
}
