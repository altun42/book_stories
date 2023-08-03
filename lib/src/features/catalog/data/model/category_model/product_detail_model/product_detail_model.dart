import 'package:book_store/src/features/catalog/data/model/product_model.dart/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

@freezed
class ProductDetailModel with _$ProductDetailModel {
  factory ProductDetailModel({
    required List<Product> products,

    

  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, Object?> json) => _$ProductDetailModelFromJson(json);
}
