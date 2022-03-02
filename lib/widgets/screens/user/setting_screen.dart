import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/user/components/dialog_close_button.dart';
import 'package:from_color/widgets/screens/user/components/round_box.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/widgets/screens/user/components/terms_view.dart';
import 'package:from_color/widgets/screens/user/components/termString.dart' as term;
import 'package:from_color/widgets/screens/user/components/tutorial_view.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // FirebaseAuth.instance.currentUser!.displayName!,
          "Info",
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 26
          ),
        ),
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text("ようこそ${FirebaseAuth.instance.currentUser!.displayName ?? FirebaseAuth.instance.currentUser!.email}さん"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6 ,
              width: MediaQuery.of(context).size.width * 0.7,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: MediaQuery.of(context).size.width * 0.05,
                  crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      fl.signout();
                      Preference().setBool(PreferenceKey.isLogin, false);
                      context.read(loginProvider.notifier).signOut();
                    },
                    child: RoundedBox(title: "ログアウト", icon: Icons.logout)
                  ),
                  InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) {
                              return TutorialView();
                            }
                        );
                      },
                      child: RoundedBox(title: "使い方", icon: Icons.info_outline)
                  ),
                  InkWell(
                    onTap: () {
                      showLicensePage(
                        context: context,
                        applicationName: "fromColor",
                        applicationVersion: "Ver.1.0",
                        applicationIcon: Image(
                          image: Assets.icon,
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                          ),
                        applicationLegalese: 'Yuta Aruga',
                      );
                    },
                    child: RoundedBox(title: "ライセンス", icon: Icons.receipt),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (termContext) {
                            return Column(
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: DialogCloseButton()
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.8,
                                  child: SimpleDialog(
                                    insetPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                                    children: [
                                      TermsView(displayText: term.terms,),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                      );
                    },
                    child: RoundedBox(title: "利用規約", icon: Icons.attach_file)
                  ),
                  InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (termContext) {
                              return Column(
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: DialogCloseButton()
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.8,
                                    child: SimpleDialog(
                                      insetPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                                      children: [
                                        TermsView(displayText: term.privacyPolicy,)
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }
                        );
                      },
                      child: RoundedBox(title: "プライバシー\nポリシー", icon: Icons.privacy_tip_outlined)
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
