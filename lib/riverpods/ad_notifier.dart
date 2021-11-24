import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:from_color/preference/shared_preference.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';

part 'ad_notifier.freezed.dart';

//NOTE: ユーザーが増えたら広告つける

@freezed
class AdState with _$AdState {
  const factory AdState({
    @Default(0) int adCount,
    @Default("") String adId,
  }) = _AdState;
}

class AdController extends StateNotifier<AdState> with LocatorMixin{
  AdController() : super(const AdState()){
    _initState();
  }

  Future<void> _initState() async{
    super.initState();
    final String id = Platform.isAndroid ? "ca-app-pub-3940256099942544/6300978111" : "ca-app-pub-3940256099942544/2934735716";
    final int adCount = await Preference().getInt(PreferenceKey.adCount);
    state = state.copyWith(adId: id, adCount: adCount);
  }

  void _incrementer() {
    final  newCount = 1 + state.adCount;
    Preference().setInt(key: PreferenceKey.adCount, value: newCount);
    state = state.copyWith(adCount: newCount);
  }

  // void counter(BuildContext context) {
  //   final  current = state.adCount;
  //   if (current <3) {
  //     _incrementer();
  //   } else {
  //     Preference().setInt(key: PreferenceKey.adCount, value: 0);
  //     state = state.copyWith(adCount: 0);
  //     showDialog(
  //         context: context,
  //         builder: (adContext) {
  //           return SimpleDialog(
  //             children: [AdWidget(ad: AdWithView())],
  //           )
  //         }
  //     );
  //   }
  }



final adProvider = StateNotifierProvider<AdController, AdState>((ref)
=> AdController()
);