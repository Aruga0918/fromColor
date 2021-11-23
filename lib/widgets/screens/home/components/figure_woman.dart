import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/selected_colors.dart';
import 'package:from_color/riverpods/color_notifier.dart';

class FigureWoman extends ConsumerWidget {
  const FigureWoman({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final SelectedColors selectedColor = watch(colorProvider).selectedColors;
    final bool isGirl = watch(colorProvider).isGirl;

    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Spacer(),
          InkWell(
              onTap: () => context.read(colorProvider.notifier).reverseSex(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Girl",
                    style: TextStyle(
                      color: isGirl
                          ? Colors.black
                          : Colors.grey,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " / ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Boy",
                    style: TextStyle(
                      color: !isGirl
                          ? Colors.black
                          : Colors.grey,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Image(
                    image: isGirl
                      ? Assets.images.tyakko.girlShoes
                      : Assets.images.tyakko.boyShoes,
                    color: selectedColor.shoesColor,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Image(
                    image: isGirl
                      ? Assets.images.tyakko.girlBottoms
                      : Assets.images.tyakko.boyBottoms,
                    color: selectedColor.bottomsColor,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Image(
                    image: isGirl
                      ? Assets.images.tyakko.girlTops
                      : Assets.images.tyakko.boyTops,
                    color: selectedColor.innerColor, //#FFF5E3
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Image(
                    image: isGirl
                      ? Assets.images.tyakko.girlOuter
                      : Assets.images.tyakko.boyOuter,
                    color: selectedColor.outerColor,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Image(
                    image: isGirl
                      ? Assets.images.tyakko.girlOutline
                      : Assets.images.tyakko.boyOutline,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                    "©︎ tyakko",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
