import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'download_tops_notifier.dart';

part 'palette_download_tops_notifier.freezed.dart';

@freezed
class PaletteDownloadTopsState with _$PaletteDownloadTopsState {
  const factory PaletteDownloadTopsState({
    @Default([]) List<DownloadData> colorDownloadDataList,
  }) = _PaletteDownloadTopsState;
}

class PaletteDownloadTopsController extends StateNotifier<PaletteDownloadTopsState> with LocatorMixin {
  PaletteDownloadTopsController(this.ref) : super(const PaletteDownloadTopsState());

  final ProviderReference ref;

  void setDataListByColor(Color color) async{
    final colorCategory = await ColorList.getColorCategory(color);
    final getItems = ref.read(downloadTopsProvider.notifier).provideColorItems(colorCategory);
    final colorTopsItems = await DownloadData.sortByTargetColor(color: color.value.toRadixString(16), list: getItems);
    WidgetsBinding.instance!.addPostFrameCallback(
            (_) => state = state = state.copyWith(colorDownloadDataList: colorTopsItems)
    );
  }

}

final paletteDownloadTopsProvider = StateNotifierProvider<PaletteDownloadTopsController, PaletteDownloadTopsState>((ref)
=> PaletteDownloadTopsController(ref)
);