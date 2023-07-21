// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<String> get eMail => throw _privateConstructorUsedError;
  Option<String> get eMailFailure => throw _privateConstructorUsedError;
  Option<String> get password => throw _privateConstructorUsedError;
  Option<bool> get isSuccessful => throw _privateConstructorUsedError;
  Option<Either<String, Unit>> get loginResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<String> eMail,
      Option<String> eMailFailure,
      Option<String> password,
      Option<bool> isSuccessful,
      Option<Either<String, Unit>> loginResult});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? eMail = null,
    Object? eMailFailure = null,
    Object? password = null,
    Object? isSuccessful = null,
    Object? loginResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eMail: null == eMail
          ? _value.eMail
          : eMail // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      eMailFailure: null == eMailFailure
          ? _value.eMailFailure
          : eMailFailure // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<String> eMail,
      Option<String> eMailFailure,
      Option<String> password,
      Option<bool> isSuccessful,
      Option<Either<String, Unit>> loginResult});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? eMail = null,
    Object? eMailFailure = null,
    Object? password = null,
    Object? isSuccessful = null,
    Object? loginResult = null,
  }) {
    return _then(_$_LoginState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eMail: null == eMail
          ? _value.eMail
          : eMail // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      eMailFailure: null == eMailFailure
          ? _value.eMailFailure
          : eMailFailure // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {required this.isLoading,
      required this.eMail,
      required this.eMailFailure,
      required this.password,
      required this.isSuccessful,
      required this.loginResult});

  @override
  final bool isLoading;
  @override
  final Option<String> eMail;
  @override
  final Option<String> eMailFailure;
  @override
  final Option<String> password;
  @override
  final Option<bool> isSuccessful;
  @override
  final Option<Either<String, Unit>> loginResult;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, eMail: $eMail, eMailFailure: $eMailFailure, password: $password, isSuccessful: $isSuccessful, loginResult: $loginResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.eMail, eMail) || other.eMail == eMail) &&
            (identical(other.eMailFailure, eMailFailure) ||
                other.eMailFailure == eMailFailure) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.loginResult, loginResult) ||
                other.loginResult == loginResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, eMail, eMailFailure,
      password, isSuccessful, loginResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final bool isLoading,
      required final Option<String> eMail,
      required final Option<String> eMailFailure,
      required final Option<String> password,
      required final Option<bool> isSuccessful,
      required final Option<Either<String, Unit>> loginResult}) = _$_LoginState;

  @override
  bool get isLoading;
  @override
  Option<String> get eMail;
  @override
  Option<String> get eMailFailure;
  @override
  Option<String> get password;
  @override
  Option<bool> get isSuccessful;
  @override
  Option<Either<String, Unit>> get loginResult;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
