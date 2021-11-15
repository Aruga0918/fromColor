import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:loading_indicator/loading_indicator.dart';

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
    final state = watch(loginProvider);
        return Scaffold(
            appBar: AppBar(
              title: const Text("ログイン"),
            ),
            body: Center(
              child: Container(
                child: state.duringLogin
                    ? Container(
                        child: LoadingIndicator(
                          indicatorType: Indicator.ballSpinFadeLoader,
                          colors: _kDefaultRainbowColors,
                          strokeWidth: 3,
                        )
                      )
                    : Column(
                        children: [
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Welcome!",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "RegularRoboto"
                              ),
                            ),
                          ),
                          SignInButton(
                            Buttons.Google,
                            text: "Googleでログイン",
                            onPressed: () async {
                              try {
                                await context.read(loginProvider.notifier).googleSignin();
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
              )
    );
  }
}