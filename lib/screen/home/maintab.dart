import 'package:flutter/material.dart';
import 'package:online_store_application/screen/home/components/MainTabItem.dart';
import 'package:online_store_application/screen/home/home_screen.dart';
import '../../constants.dart';

class MainTab extends StatelessWidget {
  List<String> items = ['Men', 'Women', 'Kids'];
  List<String> itemsImage = ['men.jpg', 'women.jpg', 'kid.jpg'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: kDefaultPadding * .3,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => MainTabItem(
                inmagePath: "assets/images/" + itemsImage[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              itemtype: items[index],
                            ))),
              ),
            )));
  }
}
