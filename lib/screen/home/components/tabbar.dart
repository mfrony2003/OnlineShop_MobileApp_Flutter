import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_store_application/model/Product.dart';
import 'package:online_store_application/screen/home/components/product_screen.dart';

import '../../../constants.dart';

class TabBarItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'AFZ Closert',
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
                        child: Text("MOVIES"),
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
                        child: Text("GAMES"),
                      ),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Product_Screen(product_bags: products_bags),
            Product_Screen(product_bags: products_shoes),
            Icon(Icons.games),
          ]),
        ));
  }
}
