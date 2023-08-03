// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:book_store/src/features/catalog/data/model/product_image_model/product_image_model.dart';
import 'package:book_store/src/features/catalog/data/model/product_model.dart/product_model.dart';
import 'package:injectable/injectable.dart';

import 'package:book_store/src/core/network_manager/network_manager.dart';

import '../../domain/category_repository.dart';
import '../model/category_model/category_model.dart';

@LazySingleton(as:CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  late final NetworkManager networkManager;
  CategoryRepositoryImpl(
    this.networkManager,
  );
  
  
  @override
  Future<List<Category>> fetchCategories() async{
  final response=await  networkManager.get('https://assign-api.piton.com.tr/api/rest/categories');
  final list= response["category"].map<Category>((e) => Category.fromJson(e)).toList();

   return list;
  }
  
  @override
  Future<List<Product>> fetchProducts(String endpoint) async{
    final response=await  networkManager.get('https://assign-api.piton.com.tr/api/rest/products/$endpoint');
    
  return response["product"].map<Product>((e) => Product.fromJson(e)).toList();
  }
   
  @override
  Future<String> postProductImage(Product product) async{

     
  
      final response = await networkManager.post('https://assign-api.piton.com.tr/api/rest/cover_image',data:{
      'fileName':product.cover
    } );
    //final jsonData = response['action_product_image']["url"];
   // jsonDatas.add(jsonData);

    return response['action_product_image']["url"];
      
    }

     
  }

  
 


 

