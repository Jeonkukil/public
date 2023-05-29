import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';

final listtemp =
    StateNotifierProvider<productPageViewModel, productPageModel?>((ref) {
  return productPageViewModel(null);
});

class Purchase {
  final Product product;

  Purchase({required this.product});
}

// 창고 데이터
class productPageModel {
  List<Product> gridCard;
  List<Product> gridCard2;
  List<Purchase>? purchaseHistory;

  productPageModel(
      {this.purchaseHistory, required this.gridCard2, required this.gridCard});
}

class productPageViewModel extends StateNotifier<productPageModel?> {
  productPageViewModel(productPageModel? state) : super(state);

  //
  void notifyGridCard(List<Product> gridCard) {
    state = productPageModel(
        gridCard: gridCard,
        gridCard2: gridCard,
        purchaseHistory: state?.purchaseHistory);
  }

  void notifySelectCard(String name) {
    List<Product> gridCard = state!.gridCard;
    List<Product> select = gridCard.where((e) => e.brandName == name).toList();
    state = productPageModel(
        gridCard2: select,
        gridCard: gridCard,
        purchaseHistory: state?.purchaseHistory);
  }

  void sortGridCard(String order) {
    List<Product> gridCard = List.from(state!.gridCard);
    if (order == '낮은가격순') {
      gridCard.sort((a, b) => a.productPoint.compareTo(b.productPoint));
    } else if (order == '높은가격순') {
      gridCard.sort((a, b) => b.productPoint.compareTo(a.productPoint));
    }
    state = productPageModel(
        gridCard2: gridCard,
        gridCard: gridCard,
        purchaseHistory: state?.purchaseHistory);
  }

  void addPurchase(Purchase purchase) {
    state = productPageModel(
        purchaseHistory: [...?state!.purchaseHistory, purchase],
        gridCard2: state!.gridCard2,
        gridCard: state!.gridCard);
  }

}
