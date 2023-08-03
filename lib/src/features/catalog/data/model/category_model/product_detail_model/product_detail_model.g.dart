// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailModel _$$_ProductDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductDetailModelToJson(
        _$_ProductDetailModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
