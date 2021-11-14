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
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
