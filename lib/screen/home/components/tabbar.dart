import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_store_application/DataAccessLaye/productFacade.dart';
import 'package:online_store_application/model/Product.dart';

import 'package:online_store_application/screen/home/components/product_screen.dart';

import '../../../constants.dart';

class TabBarItems extends StatelessWidget {
  final String itemType;

  const TabBarItems({Key key, this.itemType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              itemType,
              style: const TextStyle(
                  color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/back.svg",
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                  icon: SvgPicture.asset("assets/icons/search.svg",
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true),
                  color: kTextColor,
                  onPressed: () {}),
              IconButton(
                  icon: SvgPicture.asset("assets/icons/cart.svg",
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true),
                  color: kTextColor,
                  onPressed: () {}),
              SizedBox(
                width: kDefaultPadding / 2,
              )
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Bags"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Shoes"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Jweleary"),
                      ),
                    ),
                  ),
                ]),
          ),
          body: FutureBuilder<List<Product>>(
            future: new ProductFacade().GetAllProducts(Item.ShoppingBag),
            builder:
                (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
              if (snapshot.hasData) {
                return TabBarView(children: [
                  Product_Screen(
                      products: snapshot.data
                          .where((element) => element.productType == 2)
                          .toList()),
                  Product_Screen(
                      products: snapshot.data
                          .where((element) => element.productType == 1)
                          .toList()),
                  Icon(Icons.games),
                ]);
              } else {
                return TabBarView(children: [
                  Product_Screen(products: []),
                  Product_Screen(products: []),
                  Icon(Icons.games),
                ]);
              }
            },
          )),
    );
  }
}
