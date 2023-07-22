import 'package:book_store/src/features/authentication/data/model/loginModel/login_model.dart';
import 'package:book_store/src/features/authentication/domain/repositories/user_login_repository.dart';
import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:fpdart/src/either.dart';

class LoginRepositoryImpl implements UserLoginRepository {
  final Dio _dio;
  LoginRepositoryImpl(this._dio);
  @override
  Future<Either<String, LoginModel>> login({required String email, required String password}) async {
    try {
      Response response = await _dio.post('https://assign-api.piton.com.tr/api/rest/login', data: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        LoginModel person = LoginModel(
          email: responseData['email'],
          password: responseData['password'],
        );
        return right(person);
      } else {
        return left('Giriş başarısız');
      }
    } catch (e) {
      return left('Hata oluştu: $e');
    }
  }
}
