import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:from_color/models/colorList.dart';
import 'package:from_color/models/entities/download_data.dart';
import 'package:state_notifier/state_notifier.dart';
import 'download_bottoms_notifier.dart';

part 'palette_download_bottoms_notifier.freezed.dart';

@freezed
class PaletteDownloadBottomsState with _$PaletteDownloadBottomsState {
  const factory PaletteDownloadBottomsState({
    @Default([]) List<DownloadData> colorDownloadDataList,
  }) = _PaletteDownloadBottomsState;
}

class PaletteDownloadBottomsController extends StateNotifier<PaletteDownloadBottomsState> with LocatorMixin {
  PaletteDownloadBottomsController(this.ref) : super(const PaletteDownloadBottomsState());

  final ProviderReference ref;

  void setDataListByColor(Color color) async{
    final colorCategory = await ColorList.getColorCategory(color);
    final getItems = ref.read(downloadBottomsProvider.notifier).provideColorItems(colorCategory);
    final colorBottomsItems = await DownloadData.sortByTargetColor(color: color.value.toRadixString(16), list: getItems);
    WidgetsBinding.instance!.addPostFrameCallback(
            (_) => state = state.copyWith(colorDownloadDataList: colorBottomsItems)
    );
  }

}

final paletteDownloadBottomsProvider = StateNotifierProvider<PaletteDownloadBottomsController, PaletteDownloadBottomsState>((ref)
=> PaletteDownloadBottomsController(ref)
);