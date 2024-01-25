// ignore_for_file: must_be_immutable

part of 'services_page_three_tab_container_notifier.dart';

/// Represents the state of ServicesPageThreeTabContainer in the application.
class ServicesPageThreeTabContainerState extends Equatable {
  ServicesPageThreeTabContainerState(
      {this.servicesPageThreeTabContainerModelObj});

  ServicesPageThreeTabContainerModel? servicesPageThreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        servicesPageThreeTabContainerModelObj,
      ];

  ServicesPageThreeTabContainerState copyWith(
      {ServicesPageThreeTabContainerModel?
          servicesPageThreeTabContainerModelObj}) {
    return ServicesPageThreeTabContainerState(
      servicesPageThreeTabContainerModelObj:
          servicesPageThreeTabContainerModelObj ??
              this.servicesPageThreeTabContainerModelObj,
    );
  }
}
