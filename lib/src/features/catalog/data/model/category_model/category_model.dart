import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_model.dart/product_model.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    required int id,
    required String name,
    required String created_at,
    required List<Product>? productList


  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) => _$CategoryFromJson(json);
}
