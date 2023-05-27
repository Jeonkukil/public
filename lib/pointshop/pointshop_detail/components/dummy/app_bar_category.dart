
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peoples_tech/pointshop/pointshop_detail/components/dummy/category_bottom_sheet.dart';

class BrandCategory {
  final String brandName;
  final String brandLogo;

  BrandCategory({
    required this.brandName,
    required this.brandLogo,
  });
}

// 커피 / 음료 더미
List<BrandCategory> brandCategoryCoffee = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "빽다방",
      brandLogo: "assets/img/logo/back.jpg"),
  BrandCategory(
      brandName: "스타벅스",
      brandLogo: "assets/img/logo/star.png"),
  BrandCategory(
      brandName: "이디야",
      brandLogo: "assets/img/logo/de.png"),
  BrandCategory(
      brandName: "할리스커피",
      brandLogo: "assets/img/logo/Hollys.png"),
  BrandCategory(
      brandName: "더벤티",
      brandLogo: "assets/img/logo/the.png"),
  BrandCategory(
      brandName: "컴포즈커피",
      brandLogo: "assets/img/logo/com.png"),
];

//아이스크림 더미
List<BrandCategory> brandCategoryIceCream = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "베스킨",
      brandLogo: "assets/img/logo/br.jpg"),
  BrandCategory(
      brandName: "하겐다즈",
      brandLogo: "assets/img/logo/haagen.png"),
  BrandCategory(
      brandName: "나뚜루",
      brandLogo: "assets/img/logo/natuur.png"),
  BrandCategory(
      brandName: "빙그래",
      brandLogo: "assets/img/logo/bing.png"),
  BrandCategory(
      brandName: "미니멜츠",
      brandLogo: "assets/img/logo/mini.jpg"),
];

// 편의점 더미
List<BrandCategory> brandCategoryStore = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "GS25",
      brandLogo: "assets/img/logo/gs25.png"),
  BrandCategory(
      brandName: "세븐일레븐",
      brandLogo: "assets/img/logo/7.jpg"),
  BrandCategory(
      brandName: "CU",
      brandLogo: "assets/img/logo/Cu.png"),
  BrandCategory(
      brandName: "Emart",
      brandLogo: "assets/img/logo/emart.png"),
  BrandCategory(
      brandName: "미니스톱",
      brandLogo: "assets/img/logo/stop.png"),
];
//
// 버거 더미
List<BrandCategory> brandCategoryBurger = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "버거킹",
      brandLogo: "assets/img/logo/burger/king.png"),
  BrandCategory(
      brandName: "롯데리아",
      brandLogo: "assets/img/logo/burger/Lotte.jpg"),
  BrandCategory(
      brandName: "맥도날드",
      brandLogo: "assets/img/logo/burger/mec.png"),
  BrandCategory(
      brandName: "프랭크버거",
      brandLogo: "assets/img/logo/burger/frank.png"),
  BrandCategory(
      brandName: "도미노피자",
      brandLogo: "assets/img/logo/burger/domi.jpg"),
];
//
// 베이커리 더미
List<BrandCategory> brandCategoryBakery = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "크라운",
      brandLogo: "assets/img/logo/bakery/crown.jpg"),
  BrandCategory(
      brandName: "던킨도너츠",
      brandLogo: "assets/img/logo/bakery/dunkin.png"),
  BrandCategory(
      brandName: "파리바게뜨",
      brandLogo: "assets/img/logo/bakery/paris.png"),
  BrandCategory(
      brandName: "뚜레쥬르",
      brandLogo: "assets/img/logo/bakery/tous.jpg"),
];
//
// 영화 / 도서 더미
List<BrandCategory> brandCategoryMovie = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "CGV",
      brandLogo: "assets/img/logo/movie/CGV.png"),
  BrandCategory(
      brandName: "교보문고",
      brandLogo: "assets/img/logo/movie/kyobo.png"),
  BrandCategory(
      brandName: "롯데시네마",
      brandLogo: "assets/img/logo/movie/lott.png"),
  BrandCategory(
      brandName: "메가박스",
      brandLogo: "assets/img/logo/movie/mega.png"),
];
//
// 상품권 더미
List<BrandCategory> brandCategoryVoucher = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "신세계",
      brandLogo: "assets/img/logo/voucher/sin.png"),
  BrandCategory(
      brandName: "롯데",
      brandLogo: "assets/img/logo/voucher/lottev.png"),
  BrandCategory(
      brandName: "컬쳐랜드",
      brandLogo: "assets/img/logo/voucher/cha.png"),
];

// 치킨 피자 더미
List<BrandCategory> brandCategoryChicken = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "BBQ",
      brandLogo: "assets/img/logo/chicken/bbq.jpg"),
  BrandCategory(
      brandName: "BHC",
      brandLogo: "assets/img/logo/chicken/bhc.png"),
  BrandCategory(
      brandName: "호식이치킨",
      brandLogo: "assets/img/logo/chicken/ho.png"),
  BrandCategory(
      brandName: "교촌치킨",
      brandLogo: "assets/img/logo/chicken/kyo.png"),
  BrandCategory(
      brandName: "네네치킨",
      brandLogo: "assets/img/logo/chicken/nn.png"),
];

// 외식 더미
List<BrandCategory> brandCategoryEatOut = [
  BrandCategory(
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"),
  BrandCategory(
      brandName: "조방낙지",
      brandLogo: "assets/img/logo/eatout/jo.jpg"),
  BrandCategory(
      brandName: "명륜진사",
      brandLogo: "assets/img/logo/eatout/mu.png"),
  BrandCategory(
      brandName: "아웃백",
      brandLogo: "assets/img/logo/eatout/out.png"),
  BrandCategory(
      brandName: "서가앤쿡",
      brandLogo: "assets/img/logo/eatout/seo.jpg"),
];
