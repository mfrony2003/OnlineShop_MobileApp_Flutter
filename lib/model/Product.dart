import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

enum Item { ShoppingBag, Shoes }

abstract class Product {
  final int price, size, id;
  final int productType, gender;
  final Color color;
  final String image, title, description;
  List<Product> products = [];

  Product(this.price, this.size, this.id, this.color, this.image, this.title,
      this.description, this.productType, this.gender);

  Future<List<Product>> getAllProduct() async {
    return null;
  }
}

class Bag extends Product {
  List<Product> products_bags = [];
  ParseResponse parseResponse;
  Bag(
      {int id,
      String image,
      int size,
      String title,
      int price,
      String description,
      Color color,
      int productType,
      int gender})
      : super(price, size, id, color, image, title, description, productType,
            gender);

  Future<List<Product>> getAllProduct() async {
    try {
      final getAllProductQuery =
          QueryBuilder<ParseObject>(ParseObject('Product'));

      this.parseResponse = await getAllProductQuery.query();
      if (this.parseResponse.success && this.parseResponse.results != null) {
        this.parseResponse.results.forEach((element) {
          final object = element as ParseObject;
          String image = object.get<String>('image');
          String title = object.get<String>('title');
          int price = object.get<int>('price');
          int size = object.get<int>('size');
          int productType = object.get<int>('ProductType');
          int gender = object.get<int>('Gender');
          int colorCode = object.get<int>('color');
          Color color = Color(colorCode);
          String description = object.get<String>('description');

          products_bags.add(new Bag(
              id: 1,
              image: image,
              size: size,
              title: title,
              price: price,
              description: description,
              color: color,
              productType: productType,
              gender: gender));
        });

        return products_bags;
      }
    } catch (e) {
      print(e);
    }
  }
}

// List<Product> products_bags = [
//   Product(
//     id: 1,
//     image: 'assets/images/bag_1.png',
//     title: 'Cbines Copy',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFe28743),
//   ),
//   Product(
//     id: 2,
//     image: 'assets/images/hand_bg_blue.png',
//     title: 'Office Code2',
//     price: 224,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFF3D82AE),
//   ),
//   Product(
//     id: 3,
//     image: 'assets/images/hand_bg_blue.png',
//     title: 'Office Code3',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFF3D82AE),
//   ),
//   Product(
//     id: 4,
//     image: 'assets/images/hand_bg_blue.png',
//     title: 'Office Code4',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFF3D82AE),
//   ),
//   Product(
//     id: 5,
//     image: 'assets/images/bag_1.png',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFe28743),
//   ),
//   Product(
//     id: 6,
//     image: 'assets/images/bag_1.png',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFe28743),
//   ),
//   Product(
//     id: 7,
//     image: 'assets/images/bag_1.png',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFF3D82AE),
//   ),
// ];

// List<Product> products_shoes = [
//   Product(
//     id: 1,
//     image: 'assets/images/shoes.jpg',
//     title: 'Cbines Copy',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 2,
//     image: 'assets/images/shoes2.jpg',
//     title: 'Office Code2',
//     price: 224,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 3,
//     image: 'assets/images/shoes.jpg',
//     title: 'Office Code3',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 4,
//     image: 'assets/images/shoes2.jpg',
//     title: 'Office Code4',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 5,
//     image: 'assets/images/shoes2.jpg',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 6,
//     image: 'assets/images/shoes.jpg',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: Color(0xFFa5a7a6),
//   ),
//   Product(
//     id: 7,
//     Gender:1,
//     ProductType:2
//     image: 'assets/images/shoes.jpg',
//     title: 'Office Code',
//     price: 234,
//     description:
//         'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.',
//     size: 12,
//     color: 0xFFa5a7a6,
//   ),
// ];

saveProduct() {
  // final todo = ParseObject('Product')
  //   ..set('Gender', 1)
  //   ..set('ProductType', 1)
  //   ..set('image', 'assets/images/shoes.jpg')
  //   ..set('title', 'Office Code')
  //   ..set('price', 100)
  //   ..set('description',
  //       'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.')
  //   ..set('size', 100)
  //   ..set('color', 0xFFa5a7a6);
  // todo.save();
}
