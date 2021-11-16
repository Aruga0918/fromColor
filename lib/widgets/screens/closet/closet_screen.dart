import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/cloth_display.dart';
import 'package:from_color/riverpods/download_bottoms_notifier.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:from_color/riverpods/download_shoes_notifier.dart';
import 'package:from_color/riverpods/download_tops_notifier.dart';
import 'package:from_color/widgets/screens/closet/closet_add_dialog.dart';
import 'package:from_color/widgets/screens/closet/components/closet_line.dart';

class ClosetScreen extends StatelessWidget {
  const ClosetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  builder: (context) => ClosetAddDialog(category: 'Outer', provider: downloadOuterProvider)
              )).then((_) => context.read(downloadOuterProvider.notifier).reload());
            },
          ),
          ClosetLine(
            clothCategory: "トップス",
            ownItems: ClothDisplay.MockTops,
            provider: downloadTopsProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Tops', provider: downloadTopsProvider)
              )).then((_) => context.read(downloadTopsProvider.notifier).reload());
            },
          ),
          ClosetLine(
            clothCategory: "ボトムス",
            ownItems: ClothDisplay.MockBottoms,
            provider: downloadBottomsProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Bottoms', provider: downloadBottomsProvider)
              )).then((_) => context.read(downloadBottomsProvider.notifier).reload());
            },
          ),
          ClosetLine(
            clothCategory: "靴",
            ownItems: ClothDisplay.MockShoes,
            provider: downloadShoesProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Shoes', provider: downloadShoesProvider)
              )).then((_) => context.read(downloadShoesProvider.notifier).reload());
            },
          ),
        ],
      ),
    );
  }
}
