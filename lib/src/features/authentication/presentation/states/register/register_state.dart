import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    required bool isLoading,
    required Option<String> eMail,
    required Option<String> name,

    required Option<String> password,
    
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        isLoading: false,
        eMail: none(),
        name: none(),
        password: none(),
      );
}
