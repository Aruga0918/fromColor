import 'package:from_color/preference/shared_preference.dart';

// Category {
//   Outer,
//   Tops,
//   Bottoms,
//   Shoes
// }

PreferenceKey Classifier(String category) {
  switch (category){
    case "Outer":
      final key = PreferenceKey.OuterCloset;
      return key;

    case "Tops":
      final key = PreferenceKey.TopsCloset;
      return key;

    case "Bottoms":
      final key = PreferenceKey.BottomsCloset;
      return key;

    case "Shoes":
      final key = PreferenceKey.ShoesCloset;
      return key;

    default:
      return PreferenceKey.ShoesCloset;
  }
}