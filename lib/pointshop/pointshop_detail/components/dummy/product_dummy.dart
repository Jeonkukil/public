import 'package:flutter/material.dart';

class Product {
  final int id;
  final String brandName;
  final String productName;
  final int productPoint;
  final String productImg;
  final String? category;
  final String? barCode;


  Product({
    required this.id,
    required this.brandName,
    required this.productName,
    required this.productPoint,
    required this.productImg,
    this.category,
    required this.barCode,
  });
}

// 음료 데이터
List<Product> ProductCoffe = [
  Product(
    id: 1,
    brandName: "스타벅스",
    productName: "아메리카노 T",
      productPoint: 3700,
    productImg: "assets/img/drink/Stamericano.jpg",
    category: "커피/음료",
    barCode: "assets/img/barcode.png",
  ),
  Product(
    id: 2,
      brandName: "컴포즈커피",
      productName: "블루베리 요거트",
      productPoint: 1471,
      productImg: "assets/img/drink/Yogurt.jpg",
      category: "커피/음료"
    ,barCode: "assets/img/barcode.png",
  ),
  Product(
    id: 3,
      brandName: "빽다방",
      productName: "라떼 T",
      productPoint: 4411,
      productImg: "assets/img/drink/Latte.png",
      category: "커피/음료"
    ,barCode: "assets/img/barcode.png",

  ),
  Product(
    id: 4,
      brandName: "더벤티",
      productName: "메론소다",
      productPoint: 1247,
      productImg: "assets/img/drink/melon.jpg",
      category: "커피/음료"
    ,barCode: "assets/img/barcode.png",
  ),
  Product(
    id: 5,
      brandName: "할리스커피",
      productName: "딸기 스무디",
      productPoint: 1541,
      productImg: "assets/img/drink/Strawberry.jpg",
      category: "커피/음료"
    ,barCode: "assets/img/barcode.png",

  ),
  Product(
    id: 6,
      brandName: "이디야",
      productName: "카라멜마끼아또",
      productPoint: 6345,
      productImg: "assets/img/drink/caramel.jpg",
      category: "커피/음료"
    ,barCode: "assets/img/barcode.png",
  )
];

// 편의점 데이터
List<Product> ProductStore = [
  Product(
    id: 7,
      brandName: "GS25",
      productName: "메로나",
      productPoint: 700,
      productImg: "assets/img/store/mel.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "편의점",
  ),
  Product(
    id: 8,
      brandName: "세븐일레븐",
      productName: "비요뜨",
      productPoint: 471,
      productImg: "assets/img/store/bee.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "편의점",
  ),
  Product(
    id: 9,
      brandName: "CU",
      productName: "백종원 도시락",
      productPoint: 4411,
      productImg: "assets/img/store/backjon.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "편의점",
  ),
  Product(
    id: 10,
      brandName: "Emart",
      productName: "신라면 (봉지)",
      productPoint: 1247,
      productImg: "assets/img/store/ShinRamen.png"
    ,barCode: "assets/img/barcode.png",
    category: "편의점",
  ),
  Product(
    id: 11,
      brandName: "미니스톱",
      productName: "죠스 떡볶이",
      productPoint: 1541,
      productImg: "assets/img/store/jose.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "편의점",
  ),
];

// 영화/도서 데이터
List<Product> ProductMovie = [
  Product(
    id: 12,
      brandName: "CGV",
      productName: "영화 예매권",
      productPoint: 2400,
      productImg: "assets/img/movie_and_book/CGVmovie.png"
    ,barCode: "assets/img/barcode.png",
    category: "영화/도서",
  ),
  Product(
    id: 13,
      brandName: "메가박스",
      productName: "영화 예매권",
      productPoint: 2300,
      productImg:  "assets/img/movie_and_book/megabox.png"
    ,barCode: "assets/img/barcode.png",
    category: "영화/도서",

  ),
  Product(
    id: 14,
      brandName: "교보문고",
      productName: "교보문고 이용권",
      productPoint: 1500,
      productImg:  "assets/img/movie_and_book/mon.png"
    ,barCode: "assets/img/barcode.png",
    category: "영화/도서",

  ),
  Product(
    id: 15,
      brandName: "롯데시네마",
      productName: "초코쿠키 콤보",
      productPoint: 800,
      productImg:  "assets/img/movie_and_book/abc.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "영화/도서",

  ),
];

// 치킨/피자 데이터
List<Product> ProductChiken = [
  Product(
    id: 16,
      brandName: "BBQ",
      productName: "황금올리브 + 콜라1.25L",
      productPoint: 2000,
      productImg: "assets/img/chicken_pizza/gold.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "치킨/피자",

  ),
  Product(
    id: 17,
      brandName: "BHC",
      productName: "뿌링클",
      productPoint: 2200,
      productImg: "assets/img/chicken_pizza/bu.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "치킨/피자",

  ),
  Product(
    id: 18,
      brandName: "호식이치킨",
      productName: "스윗츠 갈릭",
      productPoint: 2300,
      productImg: "assets/img/chicken_pizza/sweet.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "치킨/피자",

  ),
  Product(
    id: 19,
      brandName: "교촌치킨",
      productName: "허니콤보",
      productPoint: 2250,
      productImg: "assets/img/chicken_pizza/hh.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "치킨/피자",

  ),
  Product(
    id: 20,
      brandName: "네네치킨",
      productName: "오리엔탈파닭",
      productPoint: 2500,
      productImg: "assets/img/chicken_pizza/pa.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "치킨/피자",

  ),
];

// 아이스크림 데이터
List<Product> ProductIce = [
  Product(
    id: 21,
      brandName: "베스킨라빈스",
      productName: "베스킨라빈스 쿼터",
      productPoint: 1500,
      productImg: "assets/img/ice_cream/baskin.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "아이스크림",
  ),
  Product(
    id: 22,
      brandName: "하겐다즈",
      productName: "딸기 파인트",
      productPoint: 1471,
      productImg: "assets/img/ice_cream/straw.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "아이스크림",

  ),
  Product(
    id: 23,
      brandName: "나뚜루",
      productName: "녹차 파인트",
      productPoint: 4411,
      productImg: "assets/img/ice_cream/noaa.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "아이스크림",

  ),
  Product(
    id: 24,
      brandName: "빙그레",
      productName: "투게더",
      productPoint: 1247,
      productImg: "assets/img/ice_cream/two.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "아이스크림",

  ),
  Product(
    id: 25,
      brandName: "미니멜츠",
      productName: "구슬 아이스크림",
      productPoint: 614,
      productImg: "assets/img/ice_cream/guu.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "아이스크림",

  ),
];

// 베이커리 데이터
List<Product> ProductBakery = [
  Product(
    id: 26,
      brandName: "크라운",
      productName: "펌킨케이크",
      productPoint: 2400,
      productImg: "assets/img/bakery/pum.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "베이커리",

  ),
  Product(
    id: 27,
      brandName: "던킨도너츠",
      productName: "도너츠 6개팩",
      productPoint: 1471,
      productImg: "assets/img/bakery/dunk.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "베이커리",

  ),
  Product(
    id: 28,
      brandName: "파리바게뜨",
      productName: "생크림케이크",
      productPoint: 2200,
      productImg: "assets/img/bakery/sang.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "베이커리",

  ),
  Product(
    id: 29,
      brandName: "뚜레쥬르",
      productName: "초코생크림케이크",
      productPoint: 2254,
      productImg: "assets/img/bakery/tius.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "베이커리",

  ),
];

// 상품권 데이터
List<Product> ProductVoucher = [
  Product(
    id: 30,
      brandName: "신세계",
      productName: "신세계상품권 10만원",
      productPoint: 10000,
      productImg: "assets/img/voucher/sinvoucher.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "상품권",
  ),
  Product(
    id: 31,
      brandName: "롯데",
      productName: "롯데상품권 5만원",
      productPoint: 5000,
      productImg: "assets/img/voucher/loo.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "상품권",

  ),
  Product(
    id: 32,
      brandName: "컬쳐랜드",
      productName: "컬쳐랜드상품권 5만원",
      productPoint: 4980,
      productImg: "assets/img/voucher/uh.png"
    ,barCode: "assets/img/barcode.png",
    category: "상품권",

  ),
];

// 버거 데이터
List<Product> ProductBurger = [
  Product(
    id: 33,
      brandName: "맥도날드",
      productName: "상하이버거 세트",
      productPoint: 1100,
      productImg: "assets/img/burger/san.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "버거",

  ),
  Product(
    id: 34,
      brandName: "버거핑",
      productName: "와퍼 (단품)",
      productPoint: 900,
      productImg: "assets/img/burger/wat.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "버거",

  ),
  Product(
    id: 35,
      brandName: "롯데리아",
      productName: "한우불고기버거 (단품)",
      productPoint: 985,
      productImg: "assets/img/burger/double.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "버거",

  ),
  Product(
    id: 36,
      brandName: "프랭크버거",
      productName: "머쉬룸버거 세트",
      productPoint: 1247,
      productImg: "assets/img/burger/mi.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "버거",

  ),
  Product(
    id: 37,
      brandName: "도미노피자",
      productName: "뉴욕 오리진 세트",
      productPoint: 2600,
      productImg: "assets/img/burger/pizz.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "버거",

  ),
];

// 외식 데이터
List<Product> ProductEatOut = [
  Product(
    id: 38,
      brandName: "서가앤쿡",
      productName: "이용권 5만원",
      productPoint: 4500,
      productImg: "assets/img/eat_out/suu.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "외식",

  ),
  Product(
    id: 39,
      brandName: "명륜진사",
      productName: "이용권 5만원",
      productPoint: 4600,
      productImg: "assets/img/eat_out/gall.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "외식",

  ),
  Product(
    id: 40,
      brandName: "아웃백",
      productName: "이용권 5만원",
      productPoint: 4800,
      productImg: "assets/img/eat_out/outback.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "외식",

  ),
  Product(
    id: 41,
      brandName: "조방낙지",
      productName: "낙곱새",
      productPoint: 2400,
      productImg: "assets/img/eat_out/juju.jpg"
    ,barCode: "assets/img/barcode.png",
    category: "외식",

  ),
];
