import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'download_bottoms_notifier.freezed.dart';

@freezed
class DownloadBottomsState with _$DownloadBottomsState {
  const factory DownloadBottomsState({
    @Default({}) Map<String, List<DownloadData>> downloadDataList,
  }) = _DownloadBottomsState;
}

class DownloadBottomsController extends StateNotifier<DownloadBottomsState> with LocatorMixin {
  DownloadBottomsController() : super(const DownloadBottomsState());

  @override
  void initState() async{
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      final userBottomsItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Bottoms");
      state = state.copyWith(downloadDataList: userBottomsItems);
    }
  }

  List<DownloadData> provideColorItems (String colorValue) {
    return state.downloadDataList[colorValue]!;
  }

  void reload() async{
    final userBottomsItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Bottoms");
    state = state.copyWith(downloadDataList: userBottomsItems);
  }

}

final downloadBottomsProvider = StateNotifierProvider<DownloadBottomsController, DownloadBottomsState>((ref)
=> DownloadBottomsController()
);