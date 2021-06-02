import 'package:flutter/material.dart';
import 'package:online_store_application/model/Product.dart';
import 'package:online_store_application/screen/Details/details_screen.dart';
import 'package:online_store_application/screen/home/components/item-cart.dart';

import '../../../constants.dart';

// ignore: camel_case_types
class Product_Screen extends StatelessWidget {
  final List<Product> products;

  const Product_Screen({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPadding,
            crossAxisSpacing: kDefaultPadding,
            childAspectRatio: 0.75),
        itemBuilder: (context, index) => ItemCard(
          product: products[index],
          press: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        product: products[index],
                      ))),
        ),
      ),
    );
  }
}
