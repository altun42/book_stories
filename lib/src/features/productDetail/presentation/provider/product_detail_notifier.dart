import 'package:book_store/src/features/productDetail/presentation/state/product_detail_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
final productDetailProvider =
    NotifierProvider.autoDispose<ProductDetailNotifier, ProductDetailState>(
        ProductDetailNotifier.new);
class ProductDetailNotifier extends AutoDisposeNotifier<ProductDetailState>{
  ProductDetailNotifier();
  
  @override
  ProductDetailState build() {
    return ProductDetailState.initial();
    
  }
  void likeControl(){
    if (state.isLike==false) {
    state = state.copyWith(isLike: true);
      
    }else{
    state = state.copyWith(isLike: false);

    }
  }
}