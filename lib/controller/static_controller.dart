
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
final temp = StateNotifierProvider <productPageViewModel, productPageModel?>((ref) {
  return productPageViewModel(null);
});

// 창고 데이터
class productPageModel{

   String brandName;

  productPageModel({

   required this.brandName});
}

class productPageViewModel extends StateNotifier<productPageModel?>{
  productPageViewModel(productPageModel? state) : super(state);

  void notifyBradnName(String brandName) {
    // 상태가 여러가지면 기존의 grid를 가져오면서 내가원하는 것만 바꾼다.
    state = productPageModel(brandName: brandName);
    Logger().d("브랜드 변경됨" + brandName);
  }


}