import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:from_color/widgets/screens/login/login_screen.dart';
import 'package:from_color/widgets/screens/user/setting_screen.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isLogin = watch(loginProvider).isLogin;
    if (isLogin) {
      return SettingScreen();
    } else {
      return LoginScreen();
    }
  }
}
