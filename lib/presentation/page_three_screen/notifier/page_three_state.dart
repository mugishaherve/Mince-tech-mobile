// ignore_for_file: must_be_immutable

part of 'page_three_notifier.dart';

/// Represents the state of PageThree in the application.
class PageThreeState extends Equatable {
  PageThreeState({this.pageThreeModelObj});

  PageThreeModel? pageThreeModelObj;

  @override
  List<Object?> get props => [
        pageThreeModelObj,
      ];

  PageThreeState copyWith({PageThreeModel? pageThreeModelObj}) {
    return PageThreeState(
      pageThreeModelObj: pageThreeModelObj ?? this.pageThreeModelObj,
    );
  }
}
