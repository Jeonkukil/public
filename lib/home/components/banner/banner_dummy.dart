class Banner {
  final String title;
  final String? subTitle;
  final String? subTitle2;
  final int maxNumber;
  final int number;
  final String image;

  Banner({
    this.subTitle,
    this.subTitle2,
    required this.title,
    required this.maxNumber,
    required this.number,
    required this.image,
  });
}

List<Banner> banner = [
  Banner(
    subTitle: "지금 아지트 친구 초대하면",
    subTitle2: "친구도 나도 200 P",
    title: "이벤트",
    maxNumber: 3,
    number: 0,
    image: "assets/img/home/gift.png",
  ),
  Banner(
    subTitle: "42일간 진행되는 특급 혜택!",
    subTitle2: "포인트샵 50% 할인 이벤트",
    title: "이벤트",
    maxNumber: 3,
    number: 1,
    image: "assets/img/home/gift2.png",
  ),
  Banner(
    subTitle: "론칭 기념 주간",
    subTitle2: "휴식왕 이벤트",
    title: "이벤트",
    maxNumber: 3,
    number: 2,
    image: "assets/img/home/gift3.png",
  ),
];
