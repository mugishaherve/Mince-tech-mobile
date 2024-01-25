import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/services_page_container_screen/models/services_page_container_model.dart';
part 'services_page_container_state.dart';

final servicesPageContainerNotifier = StateNotifierProvider<
        ServicesPageContainerNotifier, ServicesPageContainerState>(
    (ref) => ServicesPageContainerNotifier(ServicesPageContainerState(
        servicesPageContainerModelObj: ServicesPageContainerModel())));

/// A notifier that manages the state of a ServicesPageContainer according to the event that is dispatched to it.
class ServicesPageContainerNotifier
    extends StateNotifier<ServicesPageContainerState> {
  ServicesPageContainerNotifier(ServicesPageContainerState state)
      : super(state);
}
