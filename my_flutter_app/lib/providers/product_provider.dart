import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../data/dummy_data.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = dummyProducts;

  List<Product> get products => _products;

  Product getProductById(String id) {
    return _products.firstWhere((product) => product.id == id);
  }
}
