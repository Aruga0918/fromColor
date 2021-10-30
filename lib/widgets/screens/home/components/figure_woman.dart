import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';

class FigureWoman extends StatelessWidget {
  const FigureWoman({
    Key? key,
    required this.outerColor,
    required this.innerColor,
    required this.bottomsColor,
    required this.shoesColor,
  }) : super(key: key);
  final Color outerColor;
  final Color innerColor;
  final Color bottomsColor;
  final Color shoesColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 1.1,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.bodyBoulzon,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.shoesCanvasColor,
              color: shoesColor,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.shoesCanvasOutline,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.bottomsSkinyColor,
              color: bottomsColor,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.bottomsSkinyOutline,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.innerBoulzonColor,
              color: innerColor, //#FFF5E3
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.innerBoulzonOutline,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.outerBlouzonColor,
              color: outerColor,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: double.maxFinite,
            child: Image(
              image: Assets.images.outerBlouzonOutlineWoLight,
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}
