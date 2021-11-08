import 'package:flutter/material.dart';
import 'package:from_color/models/entities/cloth_display.dart';
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ClosetAddDialog()
              ));
            },
          ),
          ClosetLine(
            clothCategory: "トップス",
            ownItems: ClothDisplay.MockTops,
            onTap: (){},
          ),
          ClosetLine(
            clothCategory: "ボトムス",
            ownItems: ClothDisplay.MockBottoms,
            onTap: (){},
          ),
          ClosetLine(
            clothCategory: "靴",
            ownItems: ClothDisplay.MockShoes,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
