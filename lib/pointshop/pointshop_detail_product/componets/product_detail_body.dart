import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:peoples_tech/componets/point_icon.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/product_dummy.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_description.dart';
import 'package:peoples_tech/pointshop/pointshop_detail_product/componets/product_infromation.dart';

class ProductDetailBody extends ConsumerWidget {
  final int userPoint;

  final int selectedProductIndex;

  const ProductDetailBody(
      {required this.userPoint, required this.selectedProductIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final listtp = ref.watch(listtemp);
    final selectedProduct = listtp!.gridCard2![selectedProductIndex];

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
            ProductInformation(),
            Divider(
              height: 20,
              thickness: 1,
              color: kGray,
            ),
            ProductDescription(),
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
                child: Text("구매하기", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return _dialog(context, selectedProduct, userPoint, ref);
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

  Dialog _dialog(BuildContext context, Product selectedProduct, int userPoint, WidgetRef ref) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.75,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
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

                            final purchase = Purchase(product: selectedProduct);
                            ref.read(listtemp.notifier).addPurchase(purchase);

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
