// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'login_model.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
//
// class LoginPage extends StatelessWidget {
//   LoginPage();
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<LoginModel>.value(
//         value: LoginModel(),
//         child: Scaffold(
//             appBar: AppBar(
//               title: const Text("ログイン"),
//             ),
//             body: Center(
//               child: Container(
//                   child: Consumer<LoginModel>(builder: (context, model, child) {
//                     if (model.duringSignin) {
//                       return Container(child: CircularProgressIndicator());
//                     }
//                     return Column(
//                       children: [
//                         Spacer(),
//                         SignInButton(
//                           Buttons.Email,
//                           text: "メールでログイン",
//                           onPressed: () async {
//                             bool? isLogin = await Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => MailLoginPage(),
//                                 ));
//                             if (isLogin == true) {
//                               Navigator.of(context).pop(true);
//                             }
//                           },
//                         ),
//                         SignInButton(
//                           Buttons.Google,
//                           text: "Googleでログイン",
//                           onPressed: () async {
//                             try {
//                               await model.googleSignin();
//                               Navigator.of(context).pop(true);
//                             } catch (e) {
//                               print(e.toString());
//                             }
//                           },
//                         ),
//                         Spacer(),
//                       ],
//                     );
//                   })),
//             )));
//   }
// }