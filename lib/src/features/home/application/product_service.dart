import 'package:book_store/src/features/home/domain/product_model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class ProductService {
  final Dio _dio;
  ProductService(this._dio);
  Future<Either<String, List<Product>>> getProduct() async {
    Response response = await _dio.get('https://assign-api.piton.com.tr/api/rest/categories');
    try {
      if (response.statusCode == 200) {
        List<Product> products = List<Product>.from(response.data);
        return right(products);
      } else {
        return left('Product ulaşılmıyor');
      }
    } catch (e) {
      return left('Hata oluştu: $e');
    }
  }
}
