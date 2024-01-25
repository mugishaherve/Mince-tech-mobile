// ignore_for_file: must_be_immutable

part of 'services_notifier.dart';

/// Represents the state of Services in the application.
class ServicesState extends Equatable {
  ServicesState({this.servicesModelObj});

  ServicesModel? servicesModelObj;

  @override
  List<Object?> get props => [
        servicesModelObj,
      ];

  ServicesState copyWith({ServicesModel? servicesModelObj}) {
    return ServicesState(
      servicesModelObj: servicesModelObj ?? this.servicesModelObj,
    );
  }
}
