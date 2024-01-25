import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fiftysix_item_model.dart';
import '../models/viewhierarchysection_item_model.dart';
import 'package:mince_tech/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    homeModelObj: HomeModel(fiftysixItemList: [
      FiftysixItemModel(
          secureIcon: ImageConstant.imgMdiSecureOutline,
          secureText: "Secure \naccount"),
      FiftysixItemModel(
          secureIcon: ImageConstant.imgMaterialSymbolsCloud,
          secureText: "E- Scrow\nservice"),
      FiftysixItemModel(
          secureIcon: ImageConstant.imgGameIconsPayMoney,
          secureText: "Pay with\nus"),
      FiftysixItemModel(
          secureIcon: ImageConstant.imgMaterialSymbolsBlock,
          secureText: "Block unsecure")
    ], viewhierarchysectionItemList: [
      ViewhierarchysectionItemModel(
          backendDevelopment: "Backend development",
          userName1: "Angele K",
          timePeriod: "2 days",
          progressImage: ImageConstant.imgStreamlinegrapharrowincrease,
          progressText: "Progress")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}
}
