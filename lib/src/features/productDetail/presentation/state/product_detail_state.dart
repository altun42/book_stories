import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  factory ProductDetailState({
    required bool isLike,
  }) = _ProductDetailState;
  factory ProductDetailState.initial() => ProductDetailState(
    isLike: false
     
      );
}