import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:mince_tech/presentation/services_page/models/services_model.dart';
part 'services_state.dart';

final servicesNotifier = StateNotifierProvider<ServicesNotifier, ServicesState>(
  (ref) => ServicesNotifier(ServicesState(
    servicesModelObj: ServicesModel(viewhierarchyItemList: [
      ViewhierarchyItemModel(backendDevelopmentText: "Backend development"),
      ViewhierarchyItemModel(backendDevelopmentText: "Backend development"),
      ViewhierarchyItemModel(backendDevelopmentText: "Backend development"),
      ViewhierarchyItemModel(backendDevelopmentText: "Backend development")
    ]),
  )),
);

/// A notifier that manages the state of a Services according to the event that is dispatched to it.
class ServicesNotifier extends StateNotifier<ServicesState> {
  ServicesNotifier(ServicesState state) : super(state) {}
}
