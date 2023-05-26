import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandCategory {
  final String brandName;
  final String? brandLogo;
  final Function(BuildContext context) onTap;
  BrandCategory(
      {
    required this.onTap,
    required this.brandName,
    this.brandLogo,
  });
}


// 커피 / 음료 더미
List<BrandCategory> brandCategoryCoffee  = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
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
              height: MediaQuery.of(context).size.height * 0.75,
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

// 아이스크림 더미
List<BrandCategory> brandCategoryIceCream = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "베스킨",
      brandLogo: "assets/img/logo/br.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "하겐다즈",
      brandLogo: "assets/img/logo/haagen.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "나뚜루",
      brandLogo: "assets/img/logo/natuur.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "빙그래",
      brandLogo: "assets/img/logo/bing.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "미니멜츠",
      brandLogo: "assets/img/logo/mini.jpg"
  ),
];

// 편의점 더미
List<BrandCategory> brandCategoryStore = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "GS25",
      brandLogo: "assets/img/logo/gs25.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "세븐일레븐",
      brandLogo: "assets/img/logo/7.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "CU",
      brandLogo: "assets/img/logo/Cu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "Emart",
      brandLogo: "assets/img/logo/emart.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "미니스톱",
      brandLogo: "assets/img/logo/stop.png"
  ),
];

// 버거 더미
List<BrandCategory> brandCategoryBurger = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "버거킹",
      brandLogo: "assets/img/logo/burger/king.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "롯데리아",
      brandLogo: "assets/img/logo/burger/Lotte.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "멕도날드",
      brandLogo: "assets/img/logo/burger/mec.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "프랭크버거",
      brandLogo: "assets/img/logo/burger/frank.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "도미노피자",
      brandLogo: "assets/img/logo/burger/domi.jpg"
  ),
];

// 베이커리 더미
List<BrandCategory> brandCategoryBakery = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "크라운",
      brandLogo: "assets/img/logo/bakery/crown.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "던킨도너츠",
      brandLogo: "assets/img/logo/bakery/dunkin.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "파리바게뜨",
      brandLogo: "assets/img/logo/bakery/paris.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "뚜레쥬르",
      brandLogo: "assets/img/logo/bakery/tous.jpg"
  ),
];

// 영화 / 도서 더미
List<BrandCategory> brandCategoryMovie = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "CGV",
      brandLogo: "assets/img/logo/movie/CGV.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "교보문고",
      brandLogo: "assets/img/logo/movie/kyobo.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "롯데시네마",
      brandLogo: "assets/img/logo/movie/lott.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "메가박스",
      brandLogo: "assets/img/logo/movie/mega.png"
  ),
];

// 상품권 더미
List<BrandCategory> brandCategoryVoucher = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "신세계",
      brandLogo: "assets/img/logo/voucher/sin.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "롯데",
      brandLogo: "assets/img/logo/voucher/lottev.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "컬쳐래드",
      brandLogo: "assets/img/logo/voucher/cha.png"
  ),
];

// 치킨 피자 더미
List<BrandCategory> brandCategoryChicken = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "BBQ",
      brandLogo: "assets/img/logo/chicken/bbq.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "BHC",
      brandLogo: "assets/img/logo/chicken/bhc.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "호식이치킨",
      brandLogo: "assets/img/logo/chicken/ho.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "교촌치킨",
      brandLogo: "assets/img/logo/chicken/kyo.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "네네치킨",
      brandLogo: "assets/img/logo/chicken/nn.png"
  ),
];

// 외식 더미
List<BrandCategory> brandCategoryEatOut = [
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "카테고리",
      brandLogo: "assets/img/logo/menu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "조방낙지",
      brandLogo: "assets/img/logo/eatout/jo.jpg"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "명륜진사",
      brandLogo: "assets/img/logo/eatout/mu.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "아웃백",
      brandLogo: "assets/img/logo/eatout/out.png"
  ),
  BrandCategory(
      onTap: (context) {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              // BottomSheet의 높이 설정
              height: MediaQuery.of(context).size.height * 0.75,
              child: Center(
                child: Text("Hello from BottomSheet"),
              ),
            );
          },
        );
      },
      brandName: "서가앤쿡",
      brandLogo: "assets/img/logo/eatout/seo.jpg"
  ),
];