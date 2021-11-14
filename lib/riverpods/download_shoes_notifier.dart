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
    @Default([]) List<DownloadData> downloadDataList,
  }) = _DownloadShoesState;
}

class DownloadShoesController extends StateNotifier<DownloadShoesState> with LocatorMixin {
  DownloadShoesController() : super(const DownloadShoesState());

  @override
  void initState() async{
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      final userShoesItems = await fl.getCategoryItems(userId: FirebaseAuth.instance.currentUser!.uid, category: "Shoes");
      state = state.copyWith(downloadDataList: userShoesItems);
    }
  }

}

final downloadShoesProvider = StateNotifierProvider<DownloadShoesController, DownloadShoesState>((ref)
=> DownloadShoesController()
);