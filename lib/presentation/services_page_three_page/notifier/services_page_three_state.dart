// ignore_for_file: must_be_immutable

part of 'services_page_three_notifier.dart';

/// Represents the state of ServicesPageThree in the application.
class ServicesPageThreeState extends Equatable {
  ServicesPageThreeState({this.servicesPageThreeModelObj});

  ServicesPageThreeModel? servicesPageThreeModelObj;

  @override
  List<Object?> get props => [
        servicesPageThreeModelObj,
      ];

  ServicesPageThreeState copyWith(
      {ServicesPageThreeModel? servicesPageThreeModelObj}) {
    return ServicesPageThreeState(
      servicesPageThreeModelObj:
          servicesPageThreeModelObj ?? this.servicesPageThreeModelObj,
    );
  }
}
