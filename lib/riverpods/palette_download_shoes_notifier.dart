import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';

import 'download_shoes_notifier.dart';
import 'download_tops_notifier.dart';

part 'palette_download_shoes_notifier.freezed.dart';

@freezed
class PaletteDownloadShoesState with _$PaletteDownloadShoesState {
  const factory PaletteDownloadShoesState({
    @Default([]) List<DownloadData> colorDownloadDataList,
  }) = _PaletteDownloadShoesState;
}

class PaletteDownloadShoesController extends StateNotifier<PaletteDownloadShoesState> with LocatorMixin {
  PaletteDownloadShoesController(this.ref) : super(const PaletteDownloadShoesState());

  final ProviderReference ref;

  void setDataListByColor(Color color) async{
    final colorCategory = await ColorList.getColorCategory(color);
    final getItems = ref.read(downloadShoesProvider.notifier).provideColorItems(colorCategory);
    final colorShoesItems = await DownloadData.sortByTargetColor(color: color.value.toRadixString(16), list: getItems);
    WidgetsBinding.instance!.addPostFrameCallback(
            (_) => state = state.copyWith(colorDownloadDataList: colorShoesItems)
    );
  }

}

final paletteDownloadShoesProvider = StateNotifierProvider<PaletteDownloadShoesController, PaletteDownloadShoesState>((ref)
=> PaletteDownloadShoesController(ref)
);