import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/home_page_tab_container_screen/models/home_page_tab_container_model.dart';
part 'home_page_tab_container_state.dart';

final homePageTabContainerNotifier = StateNotifierProvider<
    HomePageTabContainerNotifier, HomePageTabContainerState>(
  (ref) => HomePageTabContainerNotifier(HomePageTabContainerState(
    homePageTabContainerModelObj: HomePageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a HomePageTabContainer according to the event that is dispatched to it.
class HomePageTabContainerNotifier
    extends StateNotifier<HomePageTabContainerState> {
  HomePageTabContainerNotifier(HomePageTabContainerState state)
      : super(state) {}
}
