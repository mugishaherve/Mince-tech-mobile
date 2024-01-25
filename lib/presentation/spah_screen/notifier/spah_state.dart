// ignore_for_file: must_be_immutable

part of 'spah_notifier.dart';

/// Represents the state of Spah in the application.
class SpahState extends Equatable {
  SpahState({this.spahModelObj});

  SpahModel? spahModelObj;

  @override
  List<Object?> get props => [
        spahModelObj,
      ];

  SpahState copyWith({SpahModel? spahModelObj}) {
    return SpahState(
      spahModelObj: spahModelObj ?? this.spahModelObj,
    );
  }
}
