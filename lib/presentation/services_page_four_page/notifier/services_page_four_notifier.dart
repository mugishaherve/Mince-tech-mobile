import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/services_page_four_page/models/services_page_four_model.dart';
part 'services_page_four_state.dart';

final servicesPageFourNotifier =
    StateNotifierProvider<ServicesPageFourNotifier, ServicesPageFourState>(
  (ref) => ServicesPageFourNotifier(ServicesPageFourState(
    servicesPageFourModelObj: ServicesPageFourModel(),
  )),
);

/// A notifier that manages the state of a ServicesPageFour according to the event that is dispatched to it.
class ServicesPageFourNotifier extends StateNotifier<ServicesPageFourState> {
  ServicesPageFourNotifier(ServicesPageFourState state) : super(state) {}
}
