// ignore_for_file: must_be_immutable

part of 'services_page_container_notifier.dart';

/// Represents the state of ServicesPageContainer in the application.
class ServicesPageContainerState extends Equatable {
  ServicesPageContainerState({this.servicesPageContainerModelObj});

  ServicesPageContainerModel? servicesPageContainerModelObj;

  @override
  List<Object?> get props => [
        servicesPageContainerModelObj,
      ];

  ServicesPageContainerState copyWith(
      {ServicesPageContainerModel? servicesPageContainerModelObj}) {
    return ServicesPageContainerState(
      servicesPageContainerModelObj:
          servicesPageContainerModelObj ?? this.servicesPageContainerModelObj,
    );
  }
}
