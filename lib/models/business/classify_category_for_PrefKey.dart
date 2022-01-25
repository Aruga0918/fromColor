import 'package:from_color/preference/shared_preference.dart';

// Category {
//   Outer,
//   Tops,
//   Bottoms,
//   Shoes
// }

PreferenceKey Classifier(String category) {
  late PreferenceKey key;
  switch (category){
    case "Outer":
      key = PreferenceKey.OuterCloset;
      break;

    case "Tops":
      key = PreferenceKey.TopsCloset;
      break;

    case "Bottoms":
      key = PreferenceKey.BottomsCloset;
      break;

    case "Shoes":
      key = PreferenceKey.ShoesCloset;
      break;
  }
  return key;
}