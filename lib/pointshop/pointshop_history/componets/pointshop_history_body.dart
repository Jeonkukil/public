
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:peoples_tech/constants/my_colors.dart';
import 'package:peoples_tech/controller/list_controller.dart';


class PointShopHistoryBody extends ConsumerWidget {
  const PointShopHistoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final purchaseHistory = ref.watch(listtemp.select((model) => model?.purchaseHistory));
    // print('${purchaseHistory?.length}');
    return ListView.builder(
      itemCount: purchaseHistory?.length ?? 0,
      itemBuilder: (context, index) {
        final purchase = purchaseHistory?[index];
        if (purchase != null) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: 48,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: kGray),
                        image: DecorationImage(
                          image: AssetImage("${purchase.product.productImg}"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          purchase.product.brandName,
                          style: TextStyle(
                            fontSize: 10,
                            color: kGray,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          purchase.product.productName,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.download),
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Material(
                              color: Colors.white,
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.75,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                      child: Container(
                                        height: 300,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(width: 1, color: kGray),
                                            image: DecorationImage(
                                              image: AssetImage("assets/img/barcode.png"),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("상품명   : ${purchase.product.productName}"),
                                            SizedBox(height: 3),
                                            Text("교환처   : ${purchase.product.brandName}"),
                                            SizedBox(height: 3),
                                            Text("유효기간  : ~ 20230. 05. 30"),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 20),
                                      child: Center(
                                        child: Material(
                                          color: Colors.transparent,
                                          child: Ink(
                                            decoration: BoxDecoration(
                                              color: kPrimaryColors,
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                showDialog(context: context, builder: (BuildContext context) {
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
                                                                      child: Text("이미지가 저장되었어요", style: TextStyle(color: Colors.white),)),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                              },
                                              borderRadius: BorderRadius.circular(100),
                                              child: Container(
                                                height: 64,
                                                width: 327,
                                                child: Center(
                                                    child: Text("이미지 다운로드", style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  )
                ],
              ),
            ),
          );
        } else {
          return ListView(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
              )
            ],
          );
        }
      },
    );
  }
}
