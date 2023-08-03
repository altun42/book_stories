import 'package:book_store/src/features/authentication/data/model/registerModel/register_model.dart';
import 'package:book_store/src/features/authentication/domain/repositories/user_register_repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';


@Injectable(as:RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository{
  final Dio _dio;
 RegisterRepositoryImpl(this._dio);
  @override
  Future<Either<String, RegisterModel>> register({required String email, required String password,required String name}) async {
     try {
      Response response = await _dio.post('https://assign-api.piton.com.tr/api/rest/login', data: {'email': email, 'password': password,'name':name});
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        RegisterModel person = RegisterModel(
          email: responseData['email'],
          password: responseData['password'],
          name:responseData['name']
        );
        return right(person);
      } else {
        return left('Kayıt başarısız');
      }
    } catch (e) {
      return left('Hata oluştu: $e');
    }
  }
  

}