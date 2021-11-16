import 'package:flutter/material.dart';
import 'package:from_color/models/entities/cloth_display.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/closet/components/closet_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClosetLine extends ConsumerWidget {
  const ClosetLine({
    Key? key,
    required this.clothCategory,
    required this.ownItems,
    required this.onTap,
    required this.provider
  }) : super(key: key);
  final String clothCategory;
  final List<ClothDisplay> ownItems;
  final Function() onTap;
  final ProviderBase provider;

  @override
  Widget build(BuildContext context, ScopedReader watch) {

    final List<DownloadData> userItems = watch(provider).downloadDataList;
    final bool isLogin = watch(loginProvider).isLogin;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.4,
        minHeight: MediaQuery.of(context).size.height * 0.15
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.maxFinite,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow()],
              color: Colors.white
            ),
            child: Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(clothCategory),
                  InkWell(
                    onTap: onTap,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "add item",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
            child: isLogin
            ? GridView.builder(
                shrinkWrap: true,
                itemCount: userItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: MediaQuery.of(context).size.width / 60,
                  crossAxisSpacing: MediaQuery.of(context).size.width / 60,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ClosetGrid(
                      localImgPath: userItems[index].localImagePath,
                      remoteImgPath: userItems[index].remoteImagePath,
                      colorCode: userItems[index].itemColorValue
                  );
                }
              )
            : Text("アイテムがありません")
          ),
        ],
      ),
    );
  }
}
