import 'package:book_store/src/features/authentication/domain/repositories/user_login_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../states/login/login_state.dart';

final loginProvider = NotifierProvider.autoDispose<LoginNotifier, LoginState>(LoginNotifier.new);

class LoginNotifier extends AutoDisposeNotifier<LoginState> {
  GetIt getIt = GetIt.asNewInstance();
  LoginNotifier();
  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    final result = await getIt<UserLoginRepository>().login(
      email: state.eMail.toNullable()!,
      password: state.password.toNullable()!,
    );
  }

  @override
  LoginState build() => LoginState.initial();
}
