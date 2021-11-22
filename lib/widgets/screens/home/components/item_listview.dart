import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/riverpods/color_notifier.dart';
import 'package:from_color/widgets/screens/closet/components/closet_grid.dart';

class ItemListView extends ConsumerWidget {
  const ItemListView({
    Key? key,
    required this.provider,
    required this.setColorFunc
  }) : super(key: key);
  final StateNotifierProvider provider;
  final Function setColorFunc;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final List<DownloadData> colorItemList = watch(provider).colorDownloadDataList;
    final itemCount = colorItemList.length;
    return itemCount != 0
      ?  GridView.builder(
          shrinkWrap: true,
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: MediaQuery.of(context).size.width / 60,
              crossAxisSpacing: MediaQuery.of(context).size.width / 60,
            ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => setColorFunc(Color(int.parse('0x${colorItemList[index].itemColorValue}'))),
              child: ClosetGrid(
                  localImgPath: colorItemList[index].localImagePath,
                  remoteImgPath: colorItemList[index].remoteImagePath,
                  colorCode: colorItemList[index].itemColorValue
              ),
            );
          },
         )
      : Text("No Item");
  }
}
