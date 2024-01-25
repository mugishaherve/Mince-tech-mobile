import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/icongrid_item_model.dart';
import '../models/gameicongrid_item_model.dart';
import 'package:mince_tech/presentation/services_page_one_screen/models/services_page_one_model.dart';
part 'services_page_one_state.dart';

final servicesPageOneNotifier =
    StateNotifierProvider<ServicesPageOneNotifier, ServicesPageOneState>(
  (ref) => ServicesPageOneNotifier(ServicesPageOneState(
    servicesPageOneModelObj: ServicesPageOneModel(icongridItemList: [
      IcongridItemModel(
          icon: ImageConstant.imgMdiSecureOutlineOnerrorcontainer,
          text: "Secure \naccount"),
      IcongridItemModel(
          icon: ImageConstant.imgMaterialSymbolsCloudOnerrorcontainer,
          text: "E- Scrow\nservice"),
      IcongridItemModel(
          icon: ImageConstant.imgFluentMdl2ProductVariant, text: "Products"),
      IcongridItemModel(
          icon: ImageConstant.imgIonCardOutline, text: "Track your\ncards")
    ], gameicongridItemList: [
      GameicongridItemModel(
          gameIcon: ImageConstant.imgGameIconsPayMoneyOnerrorcontainer,
          payText: "Pay with\nus"),
      GameicongridItemModel(
          gameIcon: ImageConstant.imgMaterialSymbolsBlockOnerrorcontainer,
          payText: "Block unsecure"),
      GameicongridItemModel(
          gameIcon: ImageConstant.imgF7Person3, payText: "Connect\nothers"),
      GameicongridItemModel(
          gameIcon: ImageConstant.imgGalaSecure, payText: "Secure\naccounts")
    ]),
  )),
);

/// A notifier that manages the state of a ServicesPageOne according to the event that is dispatched to it.
class ServicesPageOneNotifier extends StateNotifier<ServicesPageOneState> {
  ServicesPageOneNotifier(ServicesPageOneState state) : super(state) {}
}
