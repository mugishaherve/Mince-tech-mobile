// ignore_for_file: must_be_immutable

part of 'services_page_one_notifier.dart';

/// Represents the state of ServicesPageOne in the application.
class ServicesPageOneState extends Equatable {
  ServicesPageOneState({this.servicesPageOneModelObj});

  ServicesPageOneModel? servicesPageOneModelObj;

  @override
  List<Object?> get props => [
        servicesPageOneModelObj,
      ];

  ServicesPageOneState copyWith(
      {ServicesPageOneModel? servicesPageOneModelObj}) {
    return ServicesPageOneState(
      servicesPageOneModelObj:
          servicesPageOneModelObj ?? this.servicesPageOneModelObj,
    );
  }
}
