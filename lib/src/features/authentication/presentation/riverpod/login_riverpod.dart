import 'package:book_store/src/core/injections/locator.dart';
import 'package:book_store/src/features/authentication/domain/repositories/user_login_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../states/login/login_state.dart';

final loginProvider = NotifierProvider.autoDispose<LoginNotifier, LoginState>(LoginNotifier.new);

class LoginNotifier extends AutoDisposeNotifier<LoginState> {
  LoginNotifier();
  Future<void>login()async{
    state= state.copyWith(isLoading: true);
    final result = await getIt<LoginRepository>().login(
      email: state.eMail.toNullable()!, 
      password: state.password.toNullable()!);
      result.fold(
        (r) => state=state.copyWith(isSuccessful: some(true),loginResult: some(right(unit))), 
        (l) => state=state.copyWith(
          isLoading: false,
          isSuccessful: some(false),
          loginResult: some(left("UnSuccesfull"))
          
        ));
  }

  @override
  LoginState build() => LoginState.initial();
}
