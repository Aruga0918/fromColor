import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

class LoginModel extends ChangeNotifier {
  bool duringSignin = false;

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future googleSignin() async {
    try {
      duringSignin = true;
      notifyListeners();
      await fl.googleSignin();
    } finally {
      duringSignin = false;
      notifyListeners();
    }
  }
}