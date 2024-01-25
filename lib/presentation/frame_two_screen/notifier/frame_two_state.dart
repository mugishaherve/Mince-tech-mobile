// ignore_for_file: must_be_immutable

part of 'frame_two_notifier.dart';

/// Represents the state of FrameTwo in the application.
class FrameTwoState extends Equatable {
  FrameTwoState({this.frameTwoModelObj});

  FrameTwoModel? frameTwoModelObj;

  @override
  List<Object?> get props => [
        frameTwoModelObj,
      ];

  FrameTwoState copyWith({FrameTwoModel? frameTwoModelObj}) {
    return FrameTwoState(
      frameTwoModelObj: frameTwoModelObj ?? this.frameTwoModelObj,
    );
  }
}
