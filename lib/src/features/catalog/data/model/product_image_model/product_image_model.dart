import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_model.freezed.dart';
part 'product_image_model.g.dart';
@freezed
class ProductImage with _$ProductImage {
  factory ProductImage({
    required dynamic url,
  
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, Object?> json) => _$ProductImageFromJson(json);
}