import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/selected_colors.dart';
import 'package:from_color/riverpods/color_notifier.dart';
import 'package:from_color/widgets/screens/home/components/color_display_bar.dart';
import 'package:from_color/widgets/screens/home/components/figure_woman.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(colorProvider);
    final SelectedColors selectedColor = state.selectedColors;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Palette",
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 26

          ),
        ),
        shadowColor: Colors.transparent,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: FigureWoman(
                outerColor: selectedColor.outerColor,
                innerColor: selectedColor.innerColor,//#FFF5E3
                bottomsColor: selectedColor.bottomsColor,
                shoesColor: selectedColor.shoesColor
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.height *0.02),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorDisplayBar(
                    selectedColor: selectedColor.outerColor,
                    clothType: "アウター",
                    onTap: () => context.read(colorProvider.notifier).showOuterColorPicker(context),
                  ),
                  ColorDisplayBar(
                    selectedColor: selectedColor.innerColor,
                    clothType: "トップス",
                    onTap: () => context.read(colorProvider.notifier).showInnerColorPicker(context),
                  ),
                  ColorDisplayBar(
                    selectedColor: selectedColor.bottomsColor,
                    clothType: "ボトムス",
                    onTap: () => context.read(colorProvider.notifier).showBottomsColorPicker(context),
                  ),
                  ColorDisplayBar(
                    selectedColor: selectedColor.shoesColor,
                    clothType: "靴",
                    onTap: () => context.read(colorProvider.notifier).showShoesColorPicker(context),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
