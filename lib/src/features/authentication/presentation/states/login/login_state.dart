import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required bool isLoading,
    required Option<String> eMail,
    required Option<String> eMailFailure,
    required Option<String> password,
    required Option<bool> isSuccessful,
    required Option<Either<String, Unit>> loginResult,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        isLoading: false,
        eMail: none(),
        eMailFailure: none(),
        password: none(),
        isSuccessful: none(),
        loginResult: none(),
      );
}
