import 'package:flutter/material.dart';
import 'package:peoples_tech/componets/custom_text_widget.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
