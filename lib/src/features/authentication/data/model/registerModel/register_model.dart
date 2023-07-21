import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    required String name,
    required String email,
    required String password,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, Object?> json) => _$RegisterModelFromJson(json);
}
