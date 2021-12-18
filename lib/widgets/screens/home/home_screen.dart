import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/selected_colors.dart';
import 'package:from_color/riverpods/color_notifier.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/riverpods/palette_download_bottoms_notifier.dart';
import 'package:from_color/riverpods/palette_download_outer_notifier.dart';
import 'package:from_color/riverpods/palette_download_shoes_notifier.dart';
import 'package:from_color/riverpods/palette_download_tops_notifier.dart';
import 'package:from_color/widgets/screens/home/components/color_display_bar.dart';
import 'package:from_color/widgets/screens/home/components/figure_woman.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final SelectedColors selectedColor = watch(colorProvider).selectedColors;
    final bool isLogin = watch(loginProvider).isLogin;

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
            child: FigureWoman(),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.height *0.02,
              bottom: MediaQuery.of(context).size.height *0.03
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorDisplayBar(
                  selectedColor: selectedColor.outerColor,
                  clothType: "アウター",
                  provider: paletteDownloadOuterProvider,
                  onTap: () => context.read(colorProvider.notifier).showOuterColorPicker(context),
                  setColorFunc: context.read(colorProvider.notifier).setOuterColor,
                  isLogin: isLogin,
                ),
                ColorDisplayBar(
                  selectedColor: selectedColor.innerColor,
                  clothType: "トップス",
                  provider: paletteDownloadTopsProvider,
                  onTap: () => context.read(colorProvider.notifier).showInnerColorPicker(context),
                  setColorFunc: context.read(colorProvider.notifier).setInnerColor,
                  isLogin: isLogin,
                ),
                ColorDisplayBar(
                  selectedColor: selectedColor.bottomsColor,
                  clothType: "ボトムス",
                  provider: paletteDownloadBottomsProvider,
                  onTap: () => context.read(colorProvider.notifier).showBottomsColorPicker(context),
                  setColorFunc: context.read(colorProvider.notifier).setBottomsColor,
                  isLogin: isLogin,
                ),
                ColorDisplayBar(
                  selectedColor: selectedColor.shoesColor,
                  clothType: "シューズ",
                  provider: paletteDownloadShoesProvider,
                  onTap: () => context.read(colorProvider.notifier).showShoesColorPicker(context),
                  setColorFunc: context.read(colorProvider.notifier).setShoesColor,
                  isLogin: isLogin,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
