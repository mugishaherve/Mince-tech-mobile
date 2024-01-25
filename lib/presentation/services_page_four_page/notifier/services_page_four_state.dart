// ignore_for_file: must_be_immutable

part of 'services_page_four_notifier.dart';

/// Represents the state of ServicesPageFour in the application.
class ServicesPageFourState extends Equatable {
  ServicesPageFourState({this.servicesPageFourModelObj});

  ServicesPageFourModel? servicesPageFourModelObj;

  @override
  List<Object?> get props => [
        servicesPageFourModelObj,
      ];

  ServicesPageFourState copyWith(
      {ServicesPageFourModel? servicesPageFourModelObj}) {
    return ServicesPageFourState(
      servicesPageFourModelObj:
          servicesPageFourModelObj ?? this.servicesPageFourModelObj,
    );
  }
}
