import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void DbInit() async {
  await initBack4App();
}

Future initBack4App() async {
  final keyApplicationId = 'TFiDelHUTOuAD2q4yGnJbR2Gm7YxrYa4ZEwlAw18';
  final keyClientKey = '5tzNzZmmxaOXSsrUGcKboJ4kntr6olf4nNGTi7zS';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  // final todo = ParseObject('Product')
  //   ..set('Gender', 2)
  //   ..set('ProductType', 2)
  //   ..set('image', 'assets/images/bag_1.png')
  //   ..set('title', 'Office Code')
  //   ..set('price', 150)
  //   ..set('description',
  //       'When you add images to your project, you need to update the pubspec.yaml file to access them—this example uses Image.asset to display the images. For more information, see this example’s pubspec.yaml.')
  //   ..set('size', 100)
  //   ..set('color', 0xFFe28743);
  // await todo.save();
}
