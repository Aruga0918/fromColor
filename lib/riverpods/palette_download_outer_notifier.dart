import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:from_color/riverpods/download_outer_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

part 'palette_download_outer_notifier.freezed.dart';

@freezed
class PaletteDownloadOuterState with _$PaletteDownloadOuterState {
  const factory PaletteDownloadOuterState({
    @Default([]) List<DownloadData> colorDownloadDataList,
  }) = _PaletteDownloadOuterState;
}

class PaletteDownloadOuterController extends StateNotifier<PaletteDownloadOuterState> with LocatorMixin {
  PaletteDownloadOuterController(this.ref) : super(const PaletteDownloadOuterState());

  final ProviderReference ref;

  void setDataListByColor(Color color) async{
    final colorCategory = await ColorList.getColorCategory(color);
    final getItems = ref.read(downloadOuterProvider.notifier).provideColorItems(colorCategory);
    final colorOuterItems = await DownloadData.sortByTargetColor(color: color.value.toRadixString(16), list: getItems);
    WidgetsBinding.instance!.addPostFrameCallback(
            (_) => state = state.copyWith(colorDownloadDataList: colorOuterItems)
    );
  }

}

final paletteDownloadOuterProvider = StateNotifierProvider<PaletteDownloadOuterController, PaletteDownloadOuterState>((ref)
=> PaletteDownloadOuterController(ref)
);