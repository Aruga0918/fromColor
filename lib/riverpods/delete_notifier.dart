import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:from_color/riverpods/download_bottoms_notifier.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:from_color/riverpods/download_shoes_notifier.dart';
import 'package:from_color/riverpods/download_tops_notifier.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/firebase/firebase_library.dart' as fl;

part 'delete_notifier.freezed.dart';

@freezed
class DeleteState with _$DeleteState {
  const factory DeleteState({
    @Default([]) List<DownloadData> deleteItems,
    @Default(false) bool isEditing
  }) = _DeleteState;
}

//NOTE: DownloadData.fileName is firebase store path, and .remoteImagePath is firebase storage url.

class DeleteController extends StateNotifier<DeleteState> with LocatorMixin{
  DeleteController(this.ref) : super(const DeleteState()){
    _initState();
  }
  final ProviderReference ref;

  Future<void> _initState() async{
    super.initState();
  }

  void addToItemList({required DownloadData downloadData}) {
    final list = List.of(state.deleteItems);
    if (list.contains(downloadData)) {
      list.remove(downloadData);
      state = state.copyWith(deleteItems: list);
    } else {
      list.add(downloadData);
      state = state.copyWith(deleteItems: list);
    }
  }

  Future<void> deleteItems({required BuildContext context}) async{
    final list = List.of(state.deleteItems);
    var failedCount = 0;
    var categories = [];
    list.forEach((item) async{
      if (item.fileName != null) {
        try {
          print(item.storePath);
          final category = await fl.deleteDocument(path: item.storePath);
          await fl.deleteStorage(url: item.remoteImagePath);
          categories.add(category);
          print(categories);
        } catch(e) {
          failedCount += 1;
        }
      } else {
        failedCount += 1;
      }
    });

    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('結果'),
        content: failedCount>0
            ? Text('$failedCount件の削除に失敗しました')
            : Text('アイテムを${list.length}件削除しました'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            child: Text('閉じる'),
            isDestructiveAction: false,
            onPressed: () {
              if (categories.contains("Outer")) {
                ref.read(downloadOuterProvider.notifier).reload();
              }
              if (categories.contains("Tops")) {
                ref.read(downloadTopsProvider.notifier).reload();
              }
              if (categories.contains("Bottoms")) {
                ref.read(downloadBottomsProvider.notifier).reload();
              }
              if (categories.contains("Shoes")) {
                ref.read(downloadShoesProvider.notifier).reload();
              }
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
    state = state.copyWith(deleteItems: []);
  }

  void cancel() {
    state = state.copyWith(deleteItems: [], isEditing: false);
  }

  void turnToEditing() {
    state = state.copyWith(isEditing: true);
    print("is Editing: ${state.isEditing}");
  }

}

final deleteProvider = StateNotifierProvider<DeleteController, DeleteState>((ref)
=> DeleteController(ref)
);