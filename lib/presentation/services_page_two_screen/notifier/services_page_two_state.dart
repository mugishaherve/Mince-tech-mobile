// ignore_for_file: must_be_immutable

part of 'services_page_two_notifier.dart';

/// Represents the state of ServicesPageTwo in the application.
class ServicesPageTwoState extends Equatable {
  ServicesPageTwoState({
    this.templetecomplete = false,
    this.uidesignandmarking = false,
    this.finaldeign = false,
    this.servicesPageTwoModelObj,
  });

  ServicesPageTwoModel? servicesPageTwoModelObj;

  bool templetecomplete;

  bool uidesignandmarking;

  bool finaldeign;

  @override
  List<Object?> get props => [
        templetecomplete,
        uidesignandmarking,
        finaldeign,
        servicesPageTwoModelObj,
      ];

  ServicesPageTwoState copyWith({
    bool? templetecomplete,
    bool? uidesignandmarking,
    bool? finaldeign,
    ServicesPageTwoModel? servicesPageTwoModelObj,
  }) {
    return ServicesPageTwoState(
      templetecomplete: templetecomplete ?? this.templetecomplete,
      uidesignandmarking: uidesignandmarking ?? this.uidesignandmarking,
      finaldeign: finaldeign ?? this.finaldeign,
      servicesPageTwoModelObj:
          servicesPageTwoModelObj ?? this.servicesPageTwoModelObj,
    );
  }
}
