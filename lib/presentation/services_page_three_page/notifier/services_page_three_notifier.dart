import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/services_page_three_page/models/services_page_three_model.dart';
part 'services_page_three_state.dart';

final servicesPageThreeNotifier =
    StateNotifierProvider<ServicesPageThreeNotifier, ServicesPageThreeState>(
  (ref) => ServicesPageThreeNotifier(ServicesPageThreeState(
    servicesPageThreeModelObj: ServicesPageThreeModel(),
  )),
);

/// A notifier that manages the state of a ServicesPageThree according to the event that is dispatched to it.
class ServicesPageThreeNotifier extends StateNotifier<ServicesPageThreeState> {
  ServicesPageThreeNotifier(ServicesPageThreeState state) : super(state) {}
}
