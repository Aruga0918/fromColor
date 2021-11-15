import 'package:flutter/material.dart';
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
                  builder: (context) => ClosetAddDialog(category: 'Outer')
              ));
            },
          ),
          ClosetLine(
            clothCategory: "トップス",
            ownItems: ClothDisplay.MockTops,
            provider: downloadTopsProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Tops')
              ));
            },
          ),
          ClosetLine(
            clothCategory: "ボトムス",
            ownItems: ClothDisplay.MockBottoms,
            provider: downloadBottomsProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Bottoms')
              ));
            },
          ),
          ClosetLine(
            clothCategory: "靴",
            ownItems: ClothDisplay.MockShoes,
            provider: downloadShoesProvider,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog(category: 'Shoes',)
              ));
            },
          ),
        ],
      ),
    );
  }
}
