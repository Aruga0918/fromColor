import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/models/firebase/image_downloader.dart';
import 'dart:io' as io;
import 'package:from_color/models/business/update_local_json_data.dart' as ul;
import 'package:from_color/models/business/base64_img_converter.dart' as bc;
import 'package:from_color/preference/shared_preference.dart';

import 'package:loading_indicator/loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';


class ClosetGrid extends StatelessWidget {
  const ClosetGrid({
    Key? key,
    required this.localImgPath,
    required this.remoteImgPath,
    required this.colorCode,
    required this.fileName,
    required this.localKey
  }) : super(key: key);
  final String localImgPath;
  final String remoteImgPath;
  final String colorCode;
  final String? fileName;
  final PreferenceKey localKey;

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
                    if (fileName == null) {
                      return Image(image: Assets.images.imageFailed);
                    } else {
                      ul.getImgStringDataFromLocalStorage(localPath: localKey, index: fileName!).then(
                              (value) {
                            if (value == "noData") {
                              return Image(image: Assets.images.imageFailed);
                            } else {
                              return bc.base64ToImgConverter(base64: value);
                            }
                          }
                      );
                      return Image(image: Assets.images.imageFailed);
                    }
                  }
                } else if (snapshot.data == "remote") {
                  try {
                    return CachedNetworkImage(
                        imageUrl: remoteImgPath,
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.1,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Image(image: Assets.images.imageFailed),
                    );
                    // return Image.network(
                    //     remoteImgPath,
                    //     width: MediaQuery.of(context).size.width * 0.18,
                    //     height: MediaQuery.of(context).size.height * 0.1,
                    //     fit: BoxFit.cover,
                    //     errorBuilder:
                    //         (BuildContext context, Object exception, StackTrace? stackTrace) {
                    //       if (fileName == null) {
                    //         return Image(image: Assets.images.imageFailed);
                    //       } else {
                    //         ul.getImgStringDataFromLocalStorage(localPath: localKey, index: fileName!).then(
                    //                 (value) {
                    //                   if (value == "noData") {
                    //                     return Image(image: Assets.images.imageFailed);
                    //                   } else {
                    //                     return bc.base64ToImgConverter(base64: value);
                    //                   }
                    //                 }
                    //         );
                    //         return Image(image: Assets.images.imageFailed);
                    //       }
                    //     },
                    // );
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
