import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'download_tops_notifier.freezed.dart';

@freezed
class DownloadTopsState with _$DownloadTopsState {
  const factory DownloadTopsState({
    @Default({}) Map<String, List<DownloadData>> downloadDataList,
  }) = _DownloadTopsState;
}

class DownloadTopsController extends StateNotifier<DownloadTopsState> with LocatorMixin {
  DownloadTopsController() : super(const DownloadTopsState()) {
    initState();
    print("initState!!!!");
  }

  @override
  void initState() async{
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      final userTopsItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Tops");
      state = state.copyWith(downloadDataList: userTopsItems);
    }
  }

  List<DownloadData> provideColorItems (String colorValue) {
    return state.downloadDataList[colorValue]!;
  }

  void reload() async{
    final userTopsItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Tops");
    state = state.copyWith(downloadDataList: userTopsItems);
  }

  void reload2({required DownloadData newItem, required String colorCategory}) {
    final previousData = state.downloadDataList;
    previousData[colorCategory]!.add(newItem);
    state = state.copyWith(downloadDataList: previousData);
  }

}

final downloadTopsProvider = StateNotifierProvider<DownloadTopsController, DownloadTopsState>((ref)
=> DownloadTopsController()
);