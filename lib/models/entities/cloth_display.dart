class ClothDisplay {
  const ClothDisplay({
    required this.imgSrc,
    required this.colorCode
});

  final String imgSrc;
  final String colorCode;


  static const MockOuters = [
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/100/53536100/53536100b_291_d_215.jpg",
        colorCode: "fffffde7"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/952/59095952/59095952b_8_d_215.jpg",
        colorCode: "ff000000"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/100/53536100/53536100b_17_d_215.jpg",
        colorCode: "ff8d6e63"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/908/59959908/59959908_17_d_215.jpg",
        colorCode: "ffe57373"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/263/35555263/35555263b_18_d_215.jpg",
        colorCode: "ffd7ccc8"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/878/59577878/59577878b_22_d_215.jpg",
        colorCode: "ff558b2f"),
  ];

  static const MockTops = [
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/501/47630501/47630501b_8_d_215.jpg",
        colorCode: "ff000000"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/501/47630501/47630501b_38_d_215.jpg",
        colorCode: "ffd7ccc8"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/501/47630501/47630501b_20_d_215.jpg",
        colorCode: "ffefebe9"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/501/47630501/47630501b_17_d_215.jpg",
        colorCode: "ffa1887f"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/386/55954386/55954386b_18_d_215.jpg",
        colorCode: "ffe0e0e0"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/386/55954386/55954386b_290_d_215.jpg",
        colorCode: "ff880e4f"),
  ];

  static const MockBottoms = [
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/052/60212052/60212052_131_d_215.jpg",
        colorCode: "ff8d6e63"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/052/60212052/60212052_1_d_215.jpg",
        colorCode: "fffffde7"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/062/57106062/57106062b_16_d_500.jpg",
        colorCode: "ff37474f"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/307/60852307/60852307b_8_d_215.jpg",
        colorCode: "ff000000"),
  ];

  static const MockShoes = [
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/980/56094980/56094980b_8_d_215.jpg",
        colorCode: "ff000000"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/062/48601062/48601062b_1_d_215.jpg",
        colorCode: "fffffde7"),
    ClothDisplay(
        imgSrc: "https://c.imgz.jp/062/48601062/48601062b_8_d_215.jpg",
        colorCode: "ff000000"),
  ];
}