import 'package:book_store/src/features/authentication/data/model/registerModel/register_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class UserRegisterRepository {
  Future<Either<String, RegisterModel>> register({required String email, required String password,required String name});
}
