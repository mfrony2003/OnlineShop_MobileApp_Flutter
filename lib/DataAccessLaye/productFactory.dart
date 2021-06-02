import 'package:online_store_application/model/Product.dart';

class Productfactory {
  static Product getProductObject(Item _item) {
    switch (_item) {
      case Item.ShoppingBag:
        return new Bag();
      default:
        return null;
    }
  }
}
