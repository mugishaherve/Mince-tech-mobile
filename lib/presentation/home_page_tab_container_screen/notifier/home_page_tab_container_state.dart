// ignore_for_file: must_be_immutable

part of 'home_page_tab_container_notifier.dart';

/// Represents the state of HomePageTabContainer in the application.
class HomePageTabContainerState extends Equatable {
  HomePageTabContainerState({this.homePageTabContainerModelObj});

  HomePageTabContainerModel? homePageTabContainerModelObj;

  @override
  List<Object?> get props => [
        homePageTabContainerModelObj,
      ];

  HomePageTabContainerState copyWith(
      {HomePageTabContainerModel? homePageTabContainerModelObj}) {
    return HomePageTabContainerState(
      homePageTabContainerModelObj:
          homePageTabContainerModelObj ?? this.homePageTabContainerModelObj,
    );
  }
}
