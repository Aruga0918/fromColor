/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get bodyBoulzon =>
      const AssetGenImage('assets/images/body_boulzon.PNG');
  AssetGenImage get bottomsSkinyColor =>
      const AssetGenImage('assets/images/bottoms_skiny_color.PNG');
  AssetGenImage get bottomsSkinyOutline =>
      const AssetGenImage('assets/images/bottoms_skiny_outline.PNG');
  AssetGenImage get imageFailed =>
      const AssetGenImage('assets/images/image_failed.png');
  AssetGenImage get innerBoulzonColor =>
      const AssetGenImage('assets/images/inner_boulzon_color.PNG');
  AssetGenImage get innerBoulzonOutline =>
      const AssetGenImage('assets/images/inner_boulzon_outline.PNG');
  AssetGenImage get outerBlouzonColor =>
      const AssetGenImage('assets/images/outer_blouzon_color.PNG');
  AssetGenImage get outerBlouzonOutline =>
      const AssetGenImage('assets/images/outer_blouzon_outline.PNG');
  AssetGenImage get outerBlouzonOutlineWoLight =>
      const AssetGenImage('assets/images/outer_blouzon_outline_wo_light.PNG');
  AssetGenImage get sampleBlouzon =>
      const AssetGenImage('assets/images/sample_blouzon.jpg');
  AssetGenImage get sampleBottoms =>
      const AssetGenImage('assets/images/sample_bottoms.jpg');
  AssetGenImage get sampleShoes =>
      const AssetGenImage('assets/images/sample_shoes.jpg');
  AssetGenImage get sampleTops =>
      const AssetGenImage('assets/images/sample_tops.jpg');
  AssetGenImage get shoesCanvasColor =>
      const AssetGenImage('assets/images/shoes_canvas_color.PNG');
  AssetGenImage get shoesCanvasOutline =>
      const AssetGenImage('assets/images/shoes_canvas_outline.PNG');
  $AssetsImagesTutorialGen get tutorial => const $AssetsImagesTutorialGen();
  $AssetsImagesTyakkoGen get tyakko => const $AssetsImagesTyakkoGen();
}

class $AssetsImagesTutorialGen {
  const $AssetsImagesTutorialGen();

  AssetGenImage get closetScreen =>
      const AssetGenImage('assets/images/tutorial/closet_screen.png');
  AssetGenImage get howtoCloset1 =>
      const AssetGenImage('assets/images/tutorial/howto_closet_1.png');
  AssetGenImage get howtoCloset2 =>
      const AssetGenImage('assets/images/tutorial/howto_closet_2.png');
  AssetGenImage get howtoPalette1 =>
      const AssetGenImage('assets/images/tutorial/howto_palette_1.png');
  AssetGenImage get howtoPalette2 =>
      const AssetGenImage('assets/images/tutorial/howto_palette_2.png');
  AssetGenImage get howtoPalette3 =>
      const AssetGenImage('assets/images/tutorial/howto_palette_3.png');
  AssetGenImage get loginScreen =>
      const AssetGenImage('assets/images/tutorial/login_screen.png');
  AssetGenImage get paletteScreen =>
      const AssetGenImage('assets/images/tutorial/palette_screen.png');
}

class $AssetsImagesTyakkoGen {
  const $AssetsImagesTyakkoGen();

  AssetGenImage get boyBottoms =>
      const AssetGenImage('assets/images/tyakko/boy_bottoms.PNG');
  AssetGenImage get boyOuter =>
      const AssetGenImage('assets/images/tyakko/boy_outer.PNG');
  AssetGenImage get boyOutline =>
      const AssetGenImage('assets/images/tyakko/boy_outline.PNG');
  AssetGenImage get boyShoes =>
      const AssetGenImage('assets/images/tyakko/boy_shoes.PNG');
  AssetGenImage get boyTops =>
      const AssetGenImage('assets/images/tyakko/boy_tops.PNG');
  AssetGenImage get girlBottoms =>
      const AssetGenImage('assets/images/tyakko/girl_bottoms.PNG');
  AssetGenImage get girlOuter =>
      const AssetGenImage('assets/images/tyakko/girl_outer.PNG');
  AssetGenImage get girlOutline =>
      const AssetGenImage('assets/images/tyakko/girl_outline.PNG');
  AssetGenImage get girlShoes =>
      const AssetGenImage('assets/images/tyakko/girl_shoes.PNG');
  AssetGenImage get girlTops =>
      const AssetGenImage('assets/images/tyakko/girl_tops.PNG');
}

class Assets {
  Assets._();

  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String termsOfService = 'assets/termsOfService.html';
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
