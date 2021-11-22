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
    required this.clothType,
    required this.provider,
    required this.onTap,
    required this.setColorFunc,
    required this.isLogin
  }) : super(key: key);
  final Color selectedColor;
  final String clothType;
  final StateNotifierProvider provider;
  final Function() onTap;
  final Function setColorFunc;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Text(clothType),
              Spacer(),
              InkWell(
                onTap: onTap,
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  radius: MediaQuery.of(context).size.width * 0.05,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.045,
                    backgroundColor: selectedColor,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
                  child: Text(selectedColor.value.toRadixString(16)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.08,
            alignment: Alignment.center,
            child: isLogin
              ? ItemListView(provider: provider, setColorFunc: setColorFunc,)
              : Text(
                "ログインしていません",
                style: TextStyle(
                  fontSize: 12
                ),
            )
          ),
        )
      ],
    );
  }
}
