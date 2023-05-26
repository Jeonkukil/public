import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandCategory {
  final String brandName;
  final String brandLogo;
  final Function(BuildContext context) onTap;
  BrandCategory(
      {
    required this.onTap,
    required this.brandName,
    required this.brandLogo,
  });
}

List<BrandCategory> brandCategory = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
    brandName: "빽다방",
    brandLogo: "assets/img/logo/back.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "스타벅스",
      brandLogo: "assets/img/logo/star.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "이디야",
      brandLogo: "assets/img/logo/de.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "할리스커피",
      brandLogo: "assets/img/logo/Hollys.png"
  ),
  BrandCategory(onTap: (context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // BottomSheet의 높이 설정
          height: MediaQuery.of(context).size.height / 2,
          child: Center(
            child: Text("Hello from BottomSheet"),
          ),
        );
      },
    );
  },
      brandName: "더벤티",
      brandLogo: "assets/img/logo/the.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "컴포즈커피",
      brandLogo: "assets/img/logo/com.png"
  ),
];
