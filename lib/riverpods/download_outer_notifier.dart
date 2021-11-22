import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/riverpods/login_notifier.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'download_outer_notifier.freezed.dart';

@freezed
class DownloadOuterState with _$DownloadOuterState {
  const factory DownloadOuterState({
    @Default({}) Map<String, List<DownloadData>> downloadDataList,
  }) = _DownloadOuterState;
}

class DownloadOuterController extends StateNotifier<DownloadOuterState> with LocatorMixin {
  DownloadOuterController() : super(const DownloadOuterState());

  @override
  void initState() async{
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      final userOuterItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Outer");
      state = state.copyWith(downloadDataList: userOuterItems);
    }
  }

  void reload() async{
    final userOuterItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Outer");
    state = state.copyWith(downloadDataList: userOuterItems);
  }

  List<DownloadData> provideColorItems (String colorValue) {
    return state.downloadDataList[colorValue]!;
  }

}

final downloadOuterProvider = StateNotifierProvider<DownloadOuterController, DownloadOuterState>((ref)
=> DownloadOuterController()
);