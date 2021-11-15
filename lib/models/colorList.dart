import 'dart:ui';

class ColorList {

  static const Map<String, List<String>> categoryList = {
    "red": red,
    "peachPink": peachPink,
    "pink": pink,
    "purple": purple,
    "lightPurple": lightPurple,
    "lavender": lavender,
    "lightLavender": lightLavender,
    "navy": navy,
    "lightNavy": lightNavy,
    "deepBlue": deepBlue,
    "blue": blue,
    "skyBlue": skyBlue,
    "lightBlue": lightBlue,
    "turquoise": turquoise,
    "emerald": emerald,
    "deepGreen": deepGreen,
    "green": green,
    "khaki": khaki,
    "lightGreen": lightGreen,
    "yellowKhaki": yellowKhaki,
    "yellow": yellow,
    "orange": orange,
    "salmonPink": salmonPink,
    "burgundy": burgundy,
    "brown": brown,
    "lightBrown": lightBrown,
    "lightGrey": lightGrey,
    "dark": dark,
    "silverBlue": silverBlue,
    "beige": beige
  };

  static Future<String> getColorCategory(Color color) async {
    final colorValue = color.value.toRadixString(16);
    var colorCategory = "else";
    categoryList.forEach((category, colors) {
      if (colors.contains(colorValue)) {
        colorCategory = category;
        return;
      }
    });
    return colorCategory;
  }

  static const red = [
    "fff44336", "ffe53935", "ffd32f2f", "ffc62828", "ffb71c1c", "ffd50000", "ffff3d00"
  ];

  static const peachPink = [
    "ffffebee", "ffffcdd2", "ffef9a9a", "ffe57373", "ffef5350", "ffff8a80", "ffff5252",// this line from initial red
  ];

  static const pink = [
    "fffce4ec", "fff8bbd0", "fff48fb1", "fff06292", "ffec407a", "ffff80ab", "ffff4081",
    "fff50057", "ffff1744"//from initial red
  ];

  static const purple = [
    "ffab47bc", "ff9c27b0", "ff8e24aa",
    "ff7b1fa2", "ff6a1b9a", "ff4a148c", "ffea80fc", "ffe040fb", "ffd500f9", "ffaa00ff"
  ];

  static const lightPurple = [
    "fff3e5f5", "ffe1bee7", "ffce93d8", "ffba68c8"
  ];

  static const lavender = [
    "ff9575cd", "ff7e57c2", "ff673ab7", "ff5e35b1",
    "ff512da8", "ff4527a0", "ff311b92", "ffb388ff", "ff7c4dff", "ff651fff", "ff6200ea"
  ];

  static const lightLavender = [
    "ffede7f6", "ffd1c4e9", "ffb39ddb"
  ];

  static const navy = [
    "ff7986cb", "ff5c6bc0", "ff3f51b5", "ff3949ab",
    "ff303f9f", "ff283593", "ff1a237e", "ff8c9eff", "ff536dfe", "ff3d5afe", "ff304ffe"
  ];

  static const lightNavy = [
    "ffe8eaf6", "ffc5cae9", "ff9fa8da"
  ];

  static const deepBlue = [
    "ff0d47a1",  "ff0277bd", "ff01579b",
  ];

  static const blue = [
    "ff2196f3", "ff1e88e5", "ff1976d2", "ff1565c0", "ff82b1ff", "ff448aff",
    "ff2979ff", "ff2962ff"
  ];

  static const skyBlue = [
    "ffe3f2fd", "ffbbdefb", "ff90caf9", "ff64b5f6", "ff42a5f5"
  ];

  static const lightBlue = [
    "ffe1f5fe", "ffb3e5fc", "ff81d4fa", "ff4fc3f7", "ff29b6f6", "ff03a9f4", "ff039be5",
    "ff0288d1", "ff80d8ff", "ff40c4ff", "ff00b0ff", "ff0091ea"
  ];

  static const turquoise = [
    "ffe0f7fa", "ffb2ebf2", "ff80deea", "ff4dd0e1", "ff26c6da", "ff00bcd4", "ff00acc1",
    "ff0097a7", "ff00838f", "ff84ffff", "ff18ffff", "ff00e5ff", "ff00b8d4"
  ];

  static const emerald = [
    "ffe0f2f1", "ffb2dfdb", "ff80cbc4", "ff4db6ac", "ff26a69a", "ff009688", "ff00897b",
    "ff00796b", "ffa7ffeb", "ff64ffda", "ff1de9b6", "ff00bfa5"
  ];

  static const deepGreen = [
    "ff006064", "ff00695c", "ff004d40"
  ];

  static const green = [
    "ffe8f5e9", "ffc8e6c9", "ffa5d6a7", "ff81c784", "ff66bb6a", "ff4caf50", "ff43a047",
    "ff388e3c", "ff2e7d32", "ffb9f6ca", "ff69f0ae", "ff00e676", "ff00c853"
  ];

  static const khaki = [
    "fff1f8e9", "ffdcedc8", "ffc5e1a5", "ffaed581", "ff9ccc65", "ff8bc34a", "ff7cb342",
    "ff689f38", "ff558b2f", "ff33691e", "ff1b5e20"
  ];

  static const lightGreen = [
    "ffccff90", "ffb2ff59", "ff76ff03", "ff64dd17", "fff4ff81", "ffeeff41", "ffc6ff00",
    "ffaeea00"
  ]; // yellowKhaki and khaki last4 colors included

  static const yellowKhaki = [
    "fff0f4c3", "ffe6ee9c", "ffdce775", "ffd4e157", "ffcddc39", "ffc0ca33",
    "ffafb42b", "ff9e9d24", "ff827717"
  ];

  static const yellow = [
    "fffff9c4", "ffff59d", "fffff176", "ffffee58", "ffffeb3b", "fffffff8d",
    "ffffff00", "ffffea00"
  ];

  static const orange = [
    "ffffd600", "fffdd835", "fffbc02d", "fff9a825", "fff57f17",//yellow last and 7th~11th included
    "ffffecb3", "ffffe082", "ffffd54f", "ffffca28", "ffffc107", "ffffb300",
    "ffffa000", "ffff8f00", "ffff6f00", "ffffe57f", "ffffd740", "ffffc400", "ffffab00",//above lines are orange
    "ffffe0b2", "ffffcc80", "ffffb74d", "ffffa726", "ffff9800", "fffb8c00",
    "fff57c00", "ffef6c00", "ffe65100", "ffffd180", "ffffab40", "ffff9100", "ffff6d00"//above lines are deepOrange
  ];

  static const salmonPink = [
    "fffbe9e7", "ffffccbc", "ffffab91", "ffff8a65", "ffff7043", "ffff5722", "fff4511e",
    "ffff9e80", "ffff6e40"
  ];

  static const burgundy = [
    "ffe64a19", "ffd84315", "ffbf360c", "ffdd2c00",
    "ffe91e63", "ffd81b60", "ffc2185b", "ffad1457", "ff880e4f", "ffc51162"// this line from initial pink
  ];

  static const brown = [
    "ff795548", "ff6d4c41", "ff5d4037", "ff4e342e", "ff3e2723"
  ];

  static const lightBrown = [
    "ffd7ccc8", "ffbcaaa4", "ffa1887f", "ff8d6e63"
  ];

  static const lightGrey = [
    "fffafafa", "fff5f5f5", "ffeeeeee", "ffe0e0e0", "ffd6d6d6", "ffbdbdbd", "ff9e9e9e",
    "ffeceff1"
  ];

  static const dark = [
    "ff757575", "ff616161", "ff424242", "ff303030", "ff212121", //this line is dark grey
    "ff37474f", "ff263238",//this line is silverBlue
    "ff000000"
  ];

  static const silverBlue = [
    "ffcfd8dc", "ffb0bec5", "ff90a4ae", "ff78909c", "ff607d8b", "ff546e7a", "ff455a64"
  ];

  static const beige = [
    "ffffffff", "fff9fbe7", "fffffde7", "fffff8e1", "fffff3e0", "ffefebe9"
  ];
}