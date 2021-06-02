import 'package:online_store_application/DataAccessLaye/productFactory.dart';
import 'package:online_store_application/model/Product.dart';

class ProductFacade {
  Future<List<Product>> GetAllProducts(Item _productItem) async {
    Product product = Productfactory.getProductObject(_productItem);
    return product.getAllProduct();
  }
}
