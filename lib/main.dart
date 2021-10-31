import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/widgets/screens/root/root_screen.dart';


void main() async{
  //runAppの前に処理をする場合の宣言
  WidgetsFlutterBinding.ensureInitialized();
  //画面を縦向きに固定
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //Androidのstatusbarとbottom navigationのいろ
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.black,
  ));
  runApp(
      ProviderScope(
          child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "RegularRoboto",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
        pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }
        ),
      ),
      home: RootScreen(),
    );
  }
}
