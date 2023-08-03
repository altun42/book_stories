import 'package:book_store/src/features/catalog/data/model/category_model/category_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/product_model.dart/product_model.dart';
part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  factory CategoryState({
    required List<Category> categories,
    required List<List<Product>> products,
    required List<List<String>> cover,
    required List<Product> product,
    required Option<Unit> isLoading,
    required List<dynamic>? endpoints,
    required int? selectedIndex,
    required bool isClicAllButton,
    required bool isFilter,
    required int? filterIndex,
  }) = _CategoryState;
  factory CategoryState.initial() => CategoryState(
      categories: [],
      products: [],
      isLoading: none(),
      endpoints: [],
      product: [],
      cover: [],
      selectedIndex: null,
      isClicAllButton: true,
      isFilter: false,
      filterIndex: null
      );
}
