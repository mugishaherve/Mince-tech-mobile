import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/services_page_three_tab_container_screen/models/services_page_three_tab_container_model.dart';
part 'services_page_three_tab_container_state.dart';

final servicesPageThreeTabContainerNotifier = StateNotifierProvider<
    ServicesPageThreeTabContainerNotifier, ServicesPageThreeTabContainerState>(
  (ref) =>
      ServicesPageThreeTabContainerNotifier(ServicesPageThreeTabContainerState(
    servicesPageThreeTabContainerModelObj: ServicesPageThreeTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ServicesPageThreeTabContainer according to the event that is dispatched to it.
class ServicesPageThreeTabContainerNotifier
    extends StateNotifier<ServicesPageThreeTabContainerState> {
  ServicesPageThreeTabContainerNotifier(
      ServicesPageThreeTabContainerState state)
      : super(state) {}
}
