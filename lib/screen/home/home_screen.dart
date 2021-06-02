import 'package:flutter/material.dart';
import 'package:online_store_application/screen/home/components/tabbar.dart';

class HomeScreen extends StatelessWidget {
  final String itemtype;
  const HomeScreen({Key key, this.itemtype}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new TabBarItems(
      itemType: itemtype,
    );
  }
}
