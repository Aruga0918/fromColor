import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/riverpods/palette_download_outer_notifier.dart';
import 'package:from_color/widgets/screens/home/components/item_listview.dart';
import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ColorDisplayBar extends StatelessWidget {
  const ColorDisplayBar({
    Key? key,
    required this.selectedColor,
    required this.clothCategoryJP,
    required this.clothCategoryEN,
    required this.provider,
    required this.onTap,
    required this.setColorFunc,
    required this.isLogin
  }) : super(key: key);
  final Color selectedColor;
  final String clothCategoryJP;
  final String clothCategoryEN;
  final StateNotifierProvider provider;
  final Function() onTap;
  final Function setColorFunc;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                   color: Colors.black26,
                )
              )
            ),
            child: Row(
              children: [
                Text(
                    clothCategoryJP,
                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.0173),
                ),
                Spacer(),
                InkWell(
                  onTap: onTap,
                  child: CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: MediaQuery.of(context).size.height * 0.018,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.0173,
                      backgroundColor: selectedColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
                    child: Text(
                      selectedColor.value.toRadixString(16),
                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.0173)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.1,
            alignment: Alignment.center,
            child: isLogin
              ? ItemListView(provider: provider, setColorFunc: setColorFunc, clothCategory: clothCategoryEN,)
              : Text(
                "ログインしていません",
                style: TextStyle(
                  fontSize: 12
                ),
            )
          )
        ],
      ),
    );
  }
}
