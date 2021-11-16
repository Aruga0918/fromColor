import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/riverpods/upload_data_notifier.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

class ClosetAddDialog extends ConsumerWidget {
  const ClosetAddDialog({
    Key? key,
    required this.category,
    required this.provider
  }) : super(key: key);
  final String category;
  final StateNotifierProvider provider;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final selectedColor = watch(uploadDataProvider).itemColorValue;
    final selectedImage = watch(uploadDataProvider).localImagePath;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Item",
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 26
          ),
        ),
        shadowColor: Colors.transparent,
      ),
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("追加したいアイテムの画像と色を指定してください"),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                child: InkWell(
                  onTap: () => context.read(uploadDataProvider.notifier).getImagePath(context: context),
                  child: selectedImage.isNotEmpty
                  ? Image.asset(selectedImage)
                  : Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.3,
                    ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  children: [
                    Text("Color"),
                    Spacer(),
                    InkWell(
                      onTap: () => context.read(uploadDataProvider.notifier).showColorPicker(context),
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
              InkWell(
                onTap: () async{
                  if (selectedColor == Colors.transparent) {
                    showDialog(
                      context: context,
                      builder: (alertContext) {
                        return AlertDialog(
                          title: const Text('色が未選択です。'),
                          actions: <Widget>[
                            SimpleDialogOption(
                              child: const Text('閉じる'),
                              onPressed: () {
                                Navigator.of(alertContext).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                  final colorCategory = await ColorList.getColorCategory(selectedColor);
                  print(colorCategory);
                  await fl.uploadImage(
                      userId: FirebaseAuth.instance.currentUser!.uid,
                      category: category,
                      subCategory: "initial",
                      colorCategory: colorCategory,
                      colorValue: selectedColor.value.toRadixString(16),
                      localImagePath: selectedImage,
                      context: context);
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.upload_rounded),
                        Text(
                          "Add this item",
                          style: TextStyle(
                            fontFamily: "RegularRoboto"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
