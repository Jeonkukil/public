
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
    state = productPageModel(brandName: brandName);
    Logger().d("브랜드 변경됨" + brandName);
  }


}