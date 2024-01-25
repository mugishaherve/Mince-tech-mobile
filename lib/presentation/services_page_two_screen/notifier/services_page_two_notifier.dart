import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/servicespagetwogrid_item_model.dart';
import 'package:mince_tech/presentation/services_page_two_screen/models/services_page_two_model.dart';
part 'services_page_two_state.dart';

final servicesPageTwoNotifier =
    StateNotifierProvider<ServicesPageTwoNotifier, ServicesPageTwoState>(
  (ref) => ServicesPageTwoNotifier(ServicesPageTwoState(
    templetecomplete: false,
    uidesignandmarking: false,
    finaldeign: false,
    servicesPageTwoModelObj: ServicesPageTwoModel(servicespagetwogridItemList: [
      ServicespagetwogridItemModel(group: "Tasks"),
      ServicespagetwogridItemModel(group: "Files"),
      ServicespagetwogridItemModel(group: "Comment"),
      ServicespagetwogridItemModel(group: "Add Task"),
      ServicespagetwogridItemModel(group: "+"),
      ServicespagetwogridItemModel(group: "See all")
    ]),
  )),
);

/// A notifier that manages the state of a ServicesPageTwo according to the event that is dispatched to it.
class ServicesPageTwoNotifier extends StateNotifier<ServicesPageTwoState> {
  ServicesPageTwoNotifier(ServicesPageTwoState state) : super(state) {}

  void changeCheckBox1(bool value) {
    state = state.copyWith(templetecomplete: value);
  }

  void changeCheckBox2(bool value) {
    state = state.copyWith(uidesignandmarking: value);
  }

  void changeCheckBox3(bool value) {
    state = state.copyWith(finaldeign: value);
  }
}
