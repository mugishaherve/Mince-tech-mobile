// ignore_for_file: must_be_immutable

part of 'page_four_notifier.dart';

/// Represents the state of PageFour in the application.
class PageFourState extends Equatable {
  PageFourState({this.pageFourModelObj});

  PageFourModel? pageFourModelObj;

  @override
  List<Object?> get props => [
        pageFourModelObj,
      ];

  PageFourState copyWith({PageFourModel? pageFourModelObj}) {
    return PageFourState(
      pageFourModelObj: pageFourModelObj ?? this.pageFourModelObj,
    );
  }
}
