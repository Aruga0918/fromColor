import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/user/components/rounded_rectangle_box.dart';
import 'package:from_color/widgets/screens/user/components/terms_view.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/widgets/screens/user/components/termString.dart' as term;


class FirstLaunchView extends StatefulWidget {
  const FirstLaunchView({Key? key}) : super(key: key);

  @override
  _FirstLaunchState createState() => _FirstLaunchState();
}

class _FirstLaunchState extends State<FirstLaunchView> {

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text("このアプリについて"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "以下の利用規約とプライバシーポリシーを確認・同意のうえ\n始めてください",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 10
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SingleChildScrollView(
                          child: TermsView(
                            displayText: term.terms + term.privacyPolicy,
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        child: RoundedRectangleBox(
                          title: "同意して始める",
                        ),
                        onTap: () => context.read(loginProvider.notifier).startAndClose1stLaunchView(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.025),
            child: CirclePageIndicator(
              itemCount: 9,
              currentPageNotifier: _currentPageNotifier,
            ),
          ),
        ],
      ),
    );
  }
}
