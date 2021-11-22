import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/user/components/round_box.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FirebaseAuth.instance.currentUser!.displayName!,
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 26
          ),
        ),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.width * 0.7,
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
              RoundedBox(title: "使い方", icon: Icons.info_outline),
              RoundedBox(title: "ver. 1.0", icon: Icons.receipt)
            ],
          ),
        ),
      ),
    );
  }
}
