// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailState {
  bool get isLike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call({bool isLike});
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = null,
  }) {
    return _then(_value.copyWith(
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailStateCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$_ProductDetailStateCopyWith(_$_ProductDetailState value,
          $Res Function(_$_ProductDetailState) then) =
      __$$_ProductDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLike});
}

/// @nodoc
class __$$_ProductDetailStateCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$_ProductDetailState>
    implements _$$_ProductDetailStateCopyWith<$Res> {
  __$$_ProductDetailStateCopyWithImpl(
      _$_ProductDetailState _value, $Res Function(_$_ProductDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = null,
  }) {
    return _then(_$_ProductDetailState(
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductDetailState implements _ProductDetailState {
  _$_ProductDetailState({required this.isLike});

  @override
  final bool isLike;

  @override
  String toString() {
    return 'ProductDetailState(isLike: $isLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailState &&
            (identical(other.isLike, isLike) || other.isLike == isLike));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailStateCopyWith<_$_ProductDetailState> get copyWith =>
      __$$_ProductDetailStateCopyWithImpl<_$_ProductDetailState>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  factory _ProductDetailState({required final bool isLike}) =
      _$_ProductDetailState;

  @override
  bool get isLike;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailStateCopyWith<_$_ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
