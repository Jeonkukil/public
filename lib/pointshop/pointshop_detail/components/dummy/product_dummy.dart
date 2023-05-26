import 'package:flutter/material.dart';

class Product {
  final String brandName;
  final String productName;
  final int productPoint;
  final String productImg;

  Product({
    required this.brandName,
    required this.productName,
    required this.productPoint,
    required this.productImg,
  });
}

// 음료 데이터
List<Product> ProductCoffe = [
  Product(
    brandName: "스타벅스",
    productName: "아메리카노 T",
      productPoint: 3700,
    productImg: "assets/img/drink/Stamericano.jpg"
  ),
  Product(
      brandName: "컴포즈커피",
      productName: "블루베리 요거트",
      productPoint: 1471,
      productImg: "assets/img/drink/Yogurt.jpg"
  ),
  Product(
      brandName: "빽다방",
      productName: "라떼 T",
      productPoint: 4411,
      productImg: "assets/img/drink/Latte.png"
  ),
  Product(
      brandName: "더벤티",
      productName: "메론소다",
      productPoint: 1247,
      productImg: "assets/img/drink/melon.jpg"
  ),
  Product(
      brandName: "할리스커피",
      productName: "딸기 스무디",
      productPoint: 1541,
      productImg: "assets/img/drink/Strawberry.jpg"
  ),
  Product(
      brandName: "이디야커피",
      productName: "카라멜마끼아또",
      productPoint: 6345,
      productImg: "assets/img/drink/caramel.jpg"
  )
];

// 편의점 데이터
List<Product> ProductStore = [
  Product(
      brandName: "GS 25",
      productName: "메로나",
      productPoint: 700,
      productImg: "assets/img/store/mel.jpg"
  ),
  Product(
      brandName: "세븐일레븐",
      productName: "비요뜨",
      productPoint: 471,
      productImg: "assets/img/store/bee.jpg"
  ),
  Product(
      brandName: "CU",
      productName: "백종원 도시락",
      productPoint: 4411,
      productImg: "assets/img/store/backjon.jpg"
  ),
  Product(
      brandName: "Emart",
      productName: "신라면 (봉지)",
      productPoint: 1247,
      productImg: "assets/img/store/ShinRamen.png"
  ),
  Product(
      brandName: "미니스톱",
      productName: "죠스 떡볶이",
      productPoint: 1541,
      productImg: "assets/img/store/jose.jpg"
  ),
];

// 영화/도서 데이터
List<Product> ProductMovie = [
  Product(
      brandName: "CGV",
      productName: "영화 예매권",
      productPoint: 2400,
      productImg: "assets/img/movie_and_book/CGVmovie.png"
  ),
  Product(
      brandName: "메가박스",
      productName: "영화 예매권",
      productPoint: 2300,
      productImg:  "assets/img/movie_and_book/megabox.png"
  ),
  Product(
      brandName: "교보문고",
      productName: "교보문고 이용권",
      productPoint: 1500,
      productImg:  "assets/img/movie_and_book/mon.png"
  ),
  Product(
      brandName: "롯데시네마",
      productName: "초코쿠키 콤보",
      productPoint: 800,
      productImg:  "assets/img/movie_and_book/abc.jpg"
  ),
];

// 치킨/피자 데이터
List<Product> ProductChiken = [
  Product(
      brandName: "BBQ",
      productName: "황금올리브 + 콜라1.25L",
      productPoint: 2000,
      productImg: "assets/img/chicken_pizza/gold.jpg"
  ),
  Product(
      brandName: "BHC",
      productName: "뿌링클",
      productPoint: 2200,
      productImg: "assets/img/chicken_pizza/bu.jpg"
  ),
  Product(
      brandName: "호식이 두마리치킨",
      productName: "스윗츠 갈릭",
      productPoint: 2300,
      productImg: "assets/img/chicken_pizza/sweet.jpg"
  ),
  Product(
      brandName: "교촌치킨",
      productName: "허니콤보",
      productPoint: 2250,
      productImg: "assets/img/chicken_pizza/hh.jpg"
  ),
  Product(
      brandName: "네네치킨",
      productName: "오리엔탈파닭",
      productPoint: 2500,
      productImg: "assets/img/chicken_pizza/pa.jpg"
  ),
];

// 아이스크림 데이터
List<Product> ProductIce = [
  Product(
      brandName: "베스킨라빈스",
      productName: "베스킨라빈스 쿼터",
      productPoint: 1500,
      productImg: "assets/img/ice_cream/baskin.jpg"
  ),
  Product(
      brandName: "하겐다즈",
      productName: "딸기 파인트",
      productPoint: 1471,
      productImg: "assets/img/ice_cream/straw.jpg"
  ),
  Product(
      brandName: "나뚜루",
      productName: "녹차 파인트",
      productPoint: 4411,
      productImg: "assets/img/ice_cream/noaa.jpg"
  ),
  Product(
      brandName: "빙그레",
      productName: "투게더",
      productPoint: 1247,
      productImg: "assets/img/ice_cream/two.jpg"
  ),
  Product(
      brandName: "미니멜츠",
      productName: "구슬 아이스크림",
      productPoint: 614,
      productImg: "assets/img/ice_cream/guu.jpg"
  ),
];

// 베이커리 데이터
List<Product> ProductBakery = [
  Product(
      brandName: "크라운 베이커리",
      productName: "펌킨케이크",
      productPoint: 2400,
      productImg: "assets/img/bakery/pum.jpg"
  ),
  Product(
      brandName: "던킨도너츠",
      productName: "도너츠 6개팩",
      productPoint: 1471,
      productImg: "assets/img/bakery/dunk.jpg"
  ),
  Product(
      brandName: "파리바게뜨",
      productName: "생크림케이크",
      productPoint: 2200,
      productImg: "assets/img/bakery/sang.jpg"
  ),
  Product(
      brandName: "뚜레쥬르",
      productName: "초코생크림케이크",
      productPoint: 2254,
      productImg: "assets/img/bakery/tius.jpg"
  ),
];

// 상품권 데이터
List<Product> ProductVoucher = [
  Product(
      brandName: "신세계",
      productName: "신세계상품권 10만원",
      productPoint: 10000,
      productImg: "assets/img/voucher/sinvoucher.jpg"
  ),
  Product(
      brandName: "롯데",
      productName: "롯데상품권 5만원",
      productPoint: 5000,
      productImg: "assets/img/voucher/loo.jpg"
  ),
  Product(
      brandName: "컬쳐랜드",
      productName: "컬쳐랜드상품권 5만원",
      productPoint: 4980,
      productImg: "assets/img/voucher/uh.png"
  ),
];

// 버거 데이터
List<Product> ProductBurger = [
  Product(
      brandName: "맥도날드",
      productName: "상하이버거 세트",
      productPoint: 1100,
      productImg: "assets/img/burger/san.jpg"
  ),
  Product(
      brandName: "버거핑",
      productName: "와퍼 (단품)",
      productPoint: 900,
      productImg: "assets/img/burger/wat.jpg"
  ),
  Product(
      brandName: "롯데리아",
      productName: "한우불고기버거 (단품)",
      productPoint: 985,
      productImg: "assets/img/burger/double.jpg"
  ),
  Product(
      brandName: "프랭크버거",
      productName: "머쉬룸버거 세트",
      productPoint: 1247,
      productImg: "assets/img/burger/mi.jpg"
  ),
  Product(
      brandName: "도미노피자",
      productName: "뉴욕 오리진 세트",
      productPoint: 2600,
      productImg: "assets/img/burger/pizz.jpg"
  ),
];

// 외식 데이터
List<Product> ProductEatOut = [
  Product(
      brandName: "서가앤쿡",
      productName: "이용권 5만원",
      productPoint: 4500,
      productImg: "assets/img/eat_out/suu.jpg"
  ),
  Product(
      brandName: "명륜진사갈비",
      productName: "이용권 5만원",
      productPoint: 4600,
      productImg: "assets/img/eat_out/gall.jpg"
  ),
  Product(
      brandName: "아웃백",
      productName: "이용권 5만원",
      productPoint: 4800,
      productImg: "assets/img/eat_out/outback.jpg"
  ),
  Product(
      brandName: "조방낙지",
      productName: "낙곱새",
      productPoint: 2400,
      productImg: "assets/img/eat_out/juju.jpg"
  ),
];
