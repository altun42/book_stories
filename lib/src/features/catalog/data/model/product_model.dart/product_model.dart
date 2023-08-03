import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_model/product_detail_model/product_detail_model.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';
@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String author,
    required String cover,
    required String description,
    required double price,
    required int sales,
    required String slug,
    required dynamic likes_aggregate,
    required String name,
    required DateTime created_at,

  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}
