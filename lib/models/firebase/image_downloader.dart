import 'dart:io' as io;

class ImageDownLoader {
  static Future<String> getImage({required String localImgPath, required String remoteImgPath}) async{

    final bool existLocal = await io.File(localImgPath).exists();

    if (existLocal) {
      //ローカルに存在する場合はローカルの画像を使う
      io.File localImage = io.File(localImgPath);
      return "local";
      //Viewで以下のWidget生成
      // return Image.file(
      //     localImage,
      //     width: width,
      //     fit: BoxFit.fitWidth
      // );
    }
    else {
      return "remote";
    }
    return "通信エラー";
    //通信エラー時は以下のWidget生成
    // return Image(
    //     image: Assets.images.imageFailed,
    //     width: width,
    //     fit: BoxFit.fitWidth
    // );
  }
}