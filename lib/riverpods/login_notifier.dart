import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'login_notifier.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool duringLogin,
    @Default(false) bool isLogin
}) = _LoginState;
}

class LoginController extends StateNotifier<LoginState> with LocatorMixin{
  LoginController() : super(const LoginState()){
    _initState();
  }

  Future<void> _initState() async{
    super.initState();
    final bool? isSet = await Preference().getBool(PreferenceKey.isLogin);
    if (isSet == null) {
      Preference().setBool(PreferenceKey.isLogin, false);
      state = state.copyWith(isLogin: false);
    } else {
      state = state.copyWith(isLogin: isSet);
    }
  }

  Future<void> googleSignin() async{
    try {
      state = state.copyWith(duringLogin: true);
      await fl.googleSignin();
      state = state.copyWith(isLogin: true, duringLogin: false);
      Preference().setBool(PreferenceKey.isLogin, true);
    } catch(e) {
      state = state.copyWith(duringLogin: false);
      print(e);
    }
  }

  void signOut() {
    state = state.copyWith(isLogin: false);
  }
  
}

final loginProvider = StateNotifierProvider<LoginController, LoginState>((ref)
=> LoginController()
);