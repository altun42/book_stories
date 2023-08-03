

import 'package:book_store/src/features/catalog/data/model/category_model/category_model.dart';
import 'package:book_store/src/features/catalog/data/model/product_model.dart/product_model.dart';

abstract class CategoryRepository{

  Future<List<Category>> fetchCategories();
  Future<List<Product>> fetchProducts(String endpoint);
  Future<String>  postProductImage(Product product);

}