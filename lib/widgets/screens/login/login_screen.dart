import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/riverpods/color_notifier.dart';
import 'package:from_color/riverpods/download_bottoms_notifier.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:from_color/riverpods/download_shoes_notifier.dart';
import 'package:from_color/riverpods/download_tops_notifier.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:from_color/widgets/screens/home/components/first_launch_view.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:from_color/gen/assets.gen.dart';


class LoginScreen extends ConsumerWidget {
  LoginScreen();
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
  Widget build(BuildContext context, ScopedReader watch) {
    final bool isFirstLaunch = watch(loginProvider).isFirstLaunch;
    final state = watch(loginProvider);
        return isFirstLaunch
          ? FirstLaunchView()
          : Scaffold(
              appBar: AppBar(
                title: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 26
                  ),
                ),
                shadowColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
              body: Center(
                child: state.duringLogin
                    ? SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballSpinFadeLoader,
                        colors: _kDefaultRainbowColors,
                        strokeWidth: 3,
                      ),
                    )
                    : Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.width * 0.3),
                          Image(
                            image: Assets.icon,
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.width * 0.6,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Welcome!",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SignInButton(
                            Buttons.Google,
                            text: "Googleでログイン",
                            onPressed: () async {
                              try {
                                await context.read(loginProvider.notifier).googleSignin();
                                context.read(downloadOuterProvider.notifier).initState();
                                context.read(downloadTopsProvider.notifier).initState();
                                context.read(downloadBottomsProvider.notifier).initState();
                                context.read(downloadShoesProvider.notifier).initState();
                              } catch (e) {
                                print(e.toString());
                                showDialog(
                                  context: context,
                                  builder: (alertContext) {
                                    return AlertDialog(
                                      title: const Text('ログインに失敗しました'),
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
                              },
                          ),
                        Spacer(),
                      ],
                    )
                )
      );
  }
}