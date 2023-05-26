class Categorie {
  final String image;
  final String menu;

  Categorie({
    required this.image,
    required this.menu
  });
}

List<Categorie> categorie = [
  Categorie(
    image: 'assets/img/bakery/bakery.png',
    menu: "베이커리",
  ),
  Categorie(
    image: 'assets/img/chicken_pizza/chicken.png',
    menu: "치킨/피자",
  ),
  Categorie(
    image: 'assets/img/ice_cream/Ice2.png',
    menu: "아이스크림",
  ),
  Categorie(
    image: 'assets/img/drink/Americano.png',
    menu: "커피/음료",
  ),
  Categorie(
    image: 'assets/img/store/store.png',
    menu: "편의점",
  ),
  Categorie(
    image: 'assets/img/movie_and_book/Movie.png',
    menu: "영화/도서",
  ),
  Categorie(
    image: 'assets/img/voucher/Voucher.png',
    menu: "상품권",
  ),
  Categorie(
    image: 'assets/img/eat_out/EatOut.png',
    menu: "외식",
  ),
  Categorie(
    image: 'assets/img/chicken_pizza/CheeseWhopper.png',
    menu: "버거",
  ),
];
