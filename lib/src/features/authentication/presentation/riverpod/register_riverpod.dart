import 'package:book_store/src/features/authentication/domain/repositories/user_register_repository.dart';
import 'package:book_store/src/features/authentication/presentation/states/register/register_state.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registerProvider = NotifierProvider.autoDispose<UserRegisterProvider, RegisterState>(UserRegisterProvider.new);


class UserRegisterProvider extends AutoDisposeNotifier<RegisterState>{
 GetIt getIt = GetIt.asNewInstance();


  Future<void> userRegister({
    required String name,

    required String email,
    required String password
  })async{
  final userRegisterRepository = getIt<RegisterRepository>();

    final response = await userRegisterRepository.register(
      email: email,
      password: password,
      name: name
      
      
     );
     response.fold((l) => state=state.copyWith(isLoading: true), (r) => state=state.copyWith(isLoading: false));


  }
  
  @override
  RegisterState build() {
    return RegisterState.initial();
  }

}