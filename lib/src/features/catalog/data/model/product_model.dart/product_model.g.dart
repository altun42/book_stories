// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      author: json['author'] as String,
      cover: json['cover'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      sales: json['sales'] as int,
      slug: json['slug'] as String,
      likes_aggregate: json['likes_aggregate'],
      name: json['name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'cover': instance.cover,
      'description': instance.description,
      'price': instance.price,
      'sales': instance.sales,
      'slug': instance.slug,
      'likes_aggregate': instance.likes_aggregate,
      'name': instance.name,
      'created_at': instance.created_at.toIso8601String(),
    };
