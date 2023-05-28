import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/componets/custom_text_widget.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/componets/product_list_item.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_detail_dialog.dart';

class ProductDetailBody extends ConsumerWidget {
  final int userPoint;

  final int selectedProductIndex;

  const ProductDetailBody(
      {required this.userPoint, required this.selectedProductIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listtp = ref.watch(listtemp);
    final selectedProduct = listtp!.gridCard2[selectedProductIndex];

    return Stack(
      children: [
        ListView(
          children: [
            _topImg(selectedProduct),
            _productInformation(selectedProduct),
            Divider(
              height: 20,
              thickness: 1,
              color: kGray,
            ),
            _description(),
            Divider(
              height: 20,
              thickness: 1,
              color: kGray,
            ),
            _productDescription()
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: SizedBox(
              width: 319,
              height: 64,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kPrimaryColors),
                ),
                child: Text("구매하기"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return _dialog(context, selectedProduct, userPoint);
                    },
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  Dialog _dialog(BuildContext context, Product selectedProduct, int userPoint) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image.asset(selectedProduct.productImg!),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(selectedProduct.productName),
                    SizedBox(height: 5),
                    Text("을(를) 구매하시겠어요?"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: 43,
                        decoration: BoxDecoration(
                          color: kGray,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: kGray),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("보유"),
                              RichText(
                                  text: TextSpan(
                                      text: NumberFormat("#,### P")
                                          .format(userPoint),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: kBlack)))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 263,
                      height: 43,
                      decoration: BoxDecoration(
                        color: kGray,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: kGray),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("소모"),
                            RichText(
                                text: TextSpan(
                                    text: NumberFormat(" #,### p")
                                        .format(selectedProduct.productPoint),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kBlack,
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "취소",
                          style: TextStyle(color: kBlack),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(kGray)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (userPoint >= selectedProduct.productPoint) {
                            Navigator.of(context).pop();
                            showDialog(context: context,
                                builder: (BuildContext context) {
                              Future.delayed(Duration(seconds: 3), () {
                                Navigator.of(context).pop();
                              });
                              return Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Material(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: MediaQuery.of(context).size.width * 0.75,
                                          decoration: BoxDecoration(
                                            color: kBlack,
                                            borderRadius: BorderRadius.circular(50)
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:1,
                                                  child: Icon(Icons.check_box, color: Colors.green,)),
                                              Expanded(
                                                  flex: 3,
                                                  child: Text("상품 구매가 완료되었어요.", style: TextStyle(color: Colors.white),)),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                                });
                          } else {
                            showDialog(context: context,
                                builder: (BuildContext context) {
                                  return Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 30),
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              height: 80,
                                              width: MediaQuery.of(context).size.width * 0.75,
                                              decoration: BoxDecoration(
                                                  color: kBlack,
                                                  borderRadius: BorderRadius.circular(50)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex:1,
                                                      child: Icon(Icons.dangerous_outlined, color: Colors.red,)),
                                                  Expanded(
                                                      flex: 3,
                                                      child: Text("포인트가 부족합니다.", style: TextStyle(color: Colors.white),)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                        child: Text("구매"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kPrimaryColors),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _description() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("상품정보"),
          SizedBox(height: 10),
          Row(
            children: [
              Image.asset("assets/img/Coupon.png", width: 20, height: 20),
              Text(" 모바일 쿠폰")
            ],
          ),
          Row(
            children: [
              Image.asset("assets/img/store/store.png", width: 20, height: 20),
              Text(" 구매일로부터 30일 이내 사용 가능")
            ],
          ),
          Row(
            children: [
              Image.asset("assets/img/mail.png", width: 20, height: 20),
              Text(" 구매 완료 후 5 - 10분 내 메시지 발송")
            ],
          ),
        ],
      ),
    );
  }

  Padding _productDescription() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("상품설명"),
          SizedBox(height: 10),
          CustomTextWidget(
              text:
                  "▶ 유의사항 @- 상기 이미지는 연출된 것으로 실제와 다를 수 있습니다. @- 본 상품은 매장 재고 상황에 따라 동일 상품으로 교환이 불가능할 수 있습니다. @- 동일 상품 교환이 불가한 경우 동일 가격 이상의 다른 상품으로 교환이 가능하며, 동일 상품 외 다른 상품으로 교환할 시 차액이 발생할 수 있습니다. (차액 추가 지불) @- 스타벅스 앱의 사이렌 오더를 통해서도 주문 및 결제가 가능합니다. (일부 DM 제외) @- 미군부내 매장, 워터파크 입점 매장, 인청공항 입점 매장, 마장휴게소점 등 일부 매잡에서는 사용이 불가합니다. @- 해당 쿠폰과 스타벅스 카드의 복합결제 거래는 스타벅스 카드의 고유혜택인 Free Extra 및 별 적립은 적용 대상이 아닌 점 이용에 참고하시기 바랍니다. @- 정식 판매처 외의 장소나 경로를 통하여 구매하거나, 기타의 방법으로 보유하신 쿠폰은 정상적인 사용 (환불, 재전송 등 포함)이 금지되거나 제한될 수 있으니 주의하시기 바랍니다.")
        ],
      ),
    );
  }

  Padding _productInformation(Product selectedProduct) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(selectedProduct.brandName),
          SizedBox(height: 10),
          Text(selectedProduct.productName),
          SizedBox(height: 10),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: NumberFormat(" #,### ")
                      .format(selectedProduct.productPoint),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColors,
                  ),
                ),
              ),
              PointIcon(),
            ],
          ),
        ],
      ),
    );
  }

  Padding _topImg(Product selectedProduct) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        height: 319,
        width: 319,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: kGray),
        ),
        child: Image.asset(selectedProduct.productImg!, fit: BoxFit.cover),
      ),
    );
  }
}
