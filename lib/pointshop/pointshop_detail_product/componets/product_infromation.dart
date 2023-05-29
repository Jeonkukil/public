import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
