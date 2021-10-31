import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:from_color/widgets/screens/closet/closet_screen.dart';
import 'package:from_color/widgets/screens/home/home_screen.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';
import 'root_screen_state.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RootScreenController, RootScreenState>(
      create: (_) => RootScreenController(
        context: context,
      ),
      builder: (context, _){
        return CupertinoTabScaffold(
          controller: context
              .watch<RootScreenController>()
              .tabController,
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: [
                    HomeScreen(),
                    ClosetScreen()
                  ][index],
                );
              },
            );
          },
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home, color: Colors.black)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.checkroom_rounded),
                  activeIcon: Icon(Icons.checkroom, color: Colors.black)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person, color: Colors.black)
              ),
            ],
          ),
        );
      },
    );
  }
}
