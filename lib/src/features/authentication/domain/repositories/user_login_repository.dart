import 'package:book_store/src/features/authentication/data/model/loginModel/login_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class LoginRepository {
  Future<Either<String, LoginModel>> login({required String email, required String password});
}
