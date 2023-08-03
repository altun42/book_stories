import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/injections/locator.dart';
import '../../domain/category_repository.dart';
import '../states/category_state.dart';

final categoryProvider =
    NotifierProvider.autoDispose<CategoryNotifier, CategoryState>(
        CategoryNotifier.new);

class CategoryNotifier extends AutoDisposeNotifier<CategoryState> {
  CategoryNotifier();

  @override
  CategoryState build() {
    _init();

    return CategoryState.initial();
  }

  Future<void> _init() async {
    Future(() => state = state.copyWith(isLoading: some(unit)));
    await getCategories();
   
    state = state.copyWith(isLoading: none());
  }

  Future<void> getCategories() async {
    final categories = await getIt<CategoryRepository>().fetchCategories();
    if (categories.isNotEmpty) {

      for (var i = 0; i < categories.length; i++) {
         final resultProduct = await getIt<CategoryRepository>()
            .fetchProducts(categories[i].id.toString());
             
            for (var productIndex = 0; productIndex < resultProduct.length; productIndex++) {
              resultProduct[productIndex]=resultProduct[productIndex].copyWith(cover: await getIt<CategoryRepository>().postProductImage(resultProduct[productIndex]));
            }
            categories[i]=categories[i].copyWith(productList: resultProduct);
      } 
      state=state.copyWith(categories: categories);
    }
  }
  void buttonOnClick(int index){
    state = state.copyWith(selectedIndex: index);
    state = state.copyWith(isClicAllButton: false);
    state = state.copyWith(isFilter: true);



   

   
  }
  void allButonClick(){
    state = state.copyWith(selectedIndex: null);
    state = state.copyWith(isClicAllButton: true);
    state = state.copyWith(isFilter: false);




  }
 
  



}
