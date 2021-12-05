import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'download_shoes_notifier.freezed.dart';

@freezed
class DownloadShoesState with _$DownloadShoesState {
  const factory DownloadShoesState({
    @Default({}) Map<String, List<DownloadData>> downloadDataList,
  }) = _DownloadShoesState;
}

class DownloadShoesController extends StateNotifier<DownloadShoesState> with LocatorMixin {
  DownloadShoesController() : super(const DownloadShoesState()) {
    initState();
  }

  @override
  void initState() async{
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      final userShoesItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Shoes");
      state = state.copyWith(downloadDataList: userShoesItems);
    }
  }

  List<DownloadData> provideColorItems (String colorValue) {
    return state.downloadDataList[colorValue]!;
  }

  void reload() async{
    if (FirebaseAuth.instance.currentUser != null) {
      final userShoesItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Shoes");
      state = state.copyWith(downloadDataList: userShoesItems);
    }
  }

  void reload2({required DownloadData newItem, required String colorCategory}) {
    final previousData = state.downloadDataList;
    previousData[colorCategory]!.add(newItem);
    state = state.copyWith(downloadDataList: previousData);
  }

}

final downloadShoesProvider = StateNotifierProvider<DownloadShoesController, DownloadShoesState>((ref)
=> DownloadShoesController()
);