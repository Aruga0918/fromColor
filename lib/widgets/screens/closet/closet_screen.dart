import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/cloth_display.dart';
import 'package:from_color/riverpods/download_bottoms_notifier.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:from_color/riverpods/download_shoes_notifier.dart';
import 'package:from_color/riverpods/download_tops_notifier.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/closet/closet_add_dialog.dart';
import 'package:from_color/widgets/screens/closet/components/closet_line.dart';
import 'package:from_color/widgets/screens/home/components/first_launch_view.dart';

class ClosetScreen extends ConsumerWidget {
  const ClosetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final bool isFirstLaunch = watch(loginProvider).isFirstLaunch;
    return isFirstLaunch
      ? FirstLaunchView()
      : Scaffold(
          appBar: AppBar(
            shadowColor: Colors.transparent,
            title: Text(
                "Closet",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 26
              ),
            ),
          ),
          body: ListView(
            children: [
              ClosetLine(
                clothCategory: "アウター",
                ownItems: ClothDisplay.MockOuters,
                provider: downloadOuterProvider,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClosetAddDialog(
                          category: 'Outer',
                          provider: downloadOuterProvider,
                      )
                  ));
                  // .then((result) { if (result == true) {context.read(downloadOuterProvider.notifier).reload();}});
                },
              ),
              ClosetLine(
                clothCategory: "トップス",
                ownItems: ClothDisplay.MockTops,
                provider: downloadTopsProvider,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClosetAddDialog(
                          category: 'Tops',
                          provider: downloadTopsProvider,
                      )
                          //テストを通すためにresult == trueとしています
                  ));
                      // .then((result) { if (result == true) {context.read(downloadTopsProvider.notifier).reload();}});
                },
              ),
              ClosetLine(
                clothCategory: "ボトムス",
                ownItems: ClothDisplay.MockBottoms,
                provider: downloadBottomsProvider,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClosetAddDialog(
                          category: 'Bottoms',
                          provider: downloadBottomsProvider,
                      )
                  ));
                      // .then((result) {if (result == true) {context.read(downloadBottomsProvider.notifier).reload();}});
                },
              ),
              ClosetLine(
                clothCategory: "シューズ",
                ownItems: ClothDisplay.MockShoes,
                provider: downloadShoesProvider,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ClosetAddDialog(
                          category: 'Shoes',
                          provider: downloadShoesProvider,
                      )
                  ));
                      // .then((result) { if (result == true) {context.read(downloadShoesProvider.notifier).reload();}});
                },
              ),
            ],
          ),
      );
  }
}
