import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';



abstract class NetworkManager{
  void setBaseUrl(String baseUrl);
  Future<Map<String,dynamic>> get(String url);

  Future<Map<String,dynamic>> post(
    String url,{
      dynamic data
    }
  );
  Future<Response<dynamic>> put(
    String url,{
      dynamic data
    }

  );

}
@LazySingleton(as: NetworkManager)
class NetworkManagerImpl implements NetworkManager{
  final Dio _dio;

  NetworkManagerImpl(this._dio);

  @override
  Future<Map<String,dynamic>> get(String url)async {
    final response = await _dio.get(url); // API endpointini buraya ekleyin.
    if (response.statusCode == 200) {
      
     return response.data;
    } else {
      throw Exception('Failed to load categories');
    }
  }
  
  @override
  Future<Map<String,dynamic>> post(String url, {data}) async{
    try {
     

      Response response = await _dio.post(url, data: data);
      
    return response.data;
     
    } catch (e) {
      throw Exception('Failed to load token');
    }
  }
  
  @override
  Future<Response> put(String url, {data}) {
    // TODO: implement put
    throw UnimplementedError();
  }
  
  @override
  void setBaseUrl(String baseUrl) {
    // TODO: implement setBaseUrl
  }
  }

 

  



