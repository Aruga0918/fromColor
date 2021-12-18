import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/widgets/screens/user/components/dialog_close_button.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);
  
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<TutorialView> {

  final controller = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  
  @override
  void initState() {
    super.initState();
    
    controller.addListener(() {
      int next = controller.page!.round();
      if (_currentPageNotifier.value != next) {
        setState(() {
          _currentPageNotifier.value = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Spacer(),
          DialogCloseButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            child: PageView(
              controller: controller,
              children: [
                Image(image: Assets.images.tutorial.paletteScreen),
                Image(image: Assets.images.tutorial.closetScreen),
                Image(image: Assets.images.tutorial.loginScreen),
                Image(image: Assets.images.tutorial.howtoPalette1),
                Image(image: Assets.images.tutorial.howtoPalette2),
                Image(image: Assets.images.tutorial.howtoPalette3),
                Image(image: Assets.images.tutorial.howtoCloset1),
                Image(image: Assets.images.tutorial.howtoCloset2),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05),
            child: CirclePageIndicator(
              itemCount: 8,
              currentPageNotifier: _currentPageNotifier,
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
