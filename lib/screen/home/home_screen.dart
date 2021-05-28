import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_store_application/constants.dart';
import 'package:online_store_application/screen/home/components/body.dart';
import 'package:online_store_application/screen/home/components/tabbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarItems();
    // return Scaffold(
    //   appBar: buildAppBar(),
    //   body: Body(),
    // );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'AFZ Closert',
        style:
            const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
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
