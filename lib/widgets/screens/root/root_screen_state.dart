import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:from_color/riverpods/download_bottoms_notifier.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:from_color/riverpods/download_shoes_notifier.dart';
import 'package:from_color/riverpods/download_tops_notifier.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'root_screen_state.freezed.dart';
//flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class RootScreenState with _$RootScreenState {
  const factory RootScreenState({
    @Default(false) bool isFirstLaunch
}) = _RootScreenState;
}

class RootScreenController extends StateNotifier<RootScreenState> with LocatorMixin {
  RootScreenController({
    required this.context,
  }) : super(const RootScreenState());
  final BuildContext context;
  final tabController = CupertinoTabController(initialIndex: 0); //ホームたぶ
  final subscription = CompositeSubscription();
  int currentIndex = 0;

  @override
  void initState() async{
    super.initState();

    if (FirebaseAuth.instance.currentUser != null) {
      context.read(downloadOuterProvider.notifier).initState();
      context.read(downloadTopsProvider.notifier).initState();
      context.read(downloadBottomsProvider.notifier).initState();
      context.read(downloadShoesProvider.notifier).initState();

      // read<DownloadOuterController>().initState();
      // read<DownloadTopsController>().initState();
      // read<DownloadBottomsController>().initState();
      // read<DownloadShoesController>().initState();
    }

    final bool? isFirstLaunch = await Preference().getBool(PreferenceKey.isInitial);
    if (isFirstLaunch == null) {
      Preference().setBool(PreferenceKey.isLogin, false);
      state = state.copyWith(isFirstLaunch: true);
    } else {
      state = state.copyWith(isFirstLaunch: isFirstLaunch);
    }

  }

  @override
  void dispose() {
    subscription.dispose();
    tabController.dispose();
    super.dispose();
  }
}