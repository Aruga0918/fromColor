import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/models/firebase/image_downloader.dart';
import 'dart:io' as io;

import 'package:loading_indicator/loading_indicator.dart';


class ClosetGrid extends StatelessWidget {
  const ClosetGrid({
    Key? key,
    required this.localImgPath,
    required this.remoteImgPath,
    required this.colorCode
  }) : super(key: key);
  final String localImgPath;
  final String remoteImgPath;
  final String colorCode;

  static const List<Color> _kDefaultRainbowColors = const [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.19, //GridViewでのpaddingは /240 (0.05/12より)
      height: MediaQuery.of(context).size.height * 0.1,
      child: Stack(
        children: [
          FutureBuilder(
            future: ImageDownLoader.getImage(localImgPath: localImgPath, remoteImgPath: remoteImgPath),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data == "local") {
                  try {
                    return Image.file(
                        io.File(localImgPath),
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.1,
                        fit: BoxFit.cover
                    );
                  } catch(e) {
                    print(e);
                    return Image(image: Assets.images.imageFailed);
                  }
                } else if (snapshot.data == "remote") {
                  try {
                    return Image.network(
                        remoteImgPath,
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.1,
                        fit: BoxFit.cover
                    );
                  } catch(e) {
                    print(e);
                    return Image(image: Assets.images.imageFailed);
                  }
                } else {
                  print("パスが無効です");
                  return Image(image: Assets.images.imageFailed);
                }
              } else {
                return LoadingIndicator(
                  indicatorType: Indicator.ballSpinFadeLoader,
                  colors: _kDefaultRainbowColors,
                  strokeWidth: 3,
                );
              }
            }
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 240),
              child: CircleAvatar(
                backgroundColor: Color(int.parse('0x$colorCode')),
                radius: MediaQuery.of(context).size.width * 0.03,
              ),
            ),
          )
        ],
      ),
    );
  }
}
