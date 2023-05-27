
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
final listtemp = StateNotifierProvider <productPageViewModel, productPageModel?>((ref) {
  return productPageViewModel(null);
});

// 창고 데이터
class productPageModel{

  List<Product> gridCard;
  List<Product> gridCard2;

  productPageModel({
    required this.gridCard2,
     required this.gridCard});
}

class productPageViewModel extends StateNotifier<productPageModel?>{
  productPageViewModel(productPageModel? state) : super(state);


  void notifyGridCard(List<Product> gridCard) {
    state = productPageModel(gridCard: gridCard, gridCard2: gridCard);
  }

  void notifySelectCard(String name) {
    // 리스트를 가져와서 gridcard 담은거고
    List<Product> gridCard = state!.gridCard;
    // 비교하고 같은지 확인
    List<Product> select = gridCard.where((e) => e.brandName == name).toList();
    // select를 다시 가져온거
    state = productPageModel(gridCard2: select, gridCard: gridCard);
  }

  void sortGridCard(String order) {
    List<Product> gridCard = List.from(state!.gridCard);
    if(order == '낮은가격순') {
      gridCard.sort((a, b) => a.productPoint.compareTo(b.productPoint));
    } else if (order == '높은가격순') {
      gridCard.sort((a, b) => b.productPoint.compareTo(a.productPoint));
    }
    state = productPageModel(gridCard2: gridCard, gridCard: gridCard);
  }
}