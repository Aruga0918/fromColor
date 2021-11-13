import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class LoginController extends StateNotifier<LoginState> {
  LoginController() : super(const LoginState());

  Future<void> googleSignin() async{
    try {
      state = state.copyWith(duringLogin: true);
      await fl.googleSignin();
      state = state.copyWith(isLogin: true);
    } catch(e) {
      state = state.copyWith(duringLogin: false);
      print(e);
    }
  }
  
}

final loginProvider = StateNotifierProvider<LoginController, LoginState>((ref)
=> LoginController()
);