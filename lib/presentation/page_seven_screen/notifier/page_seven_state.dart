// ignore_for_file: must_be_immutable

part of 'page_seven_notifier.dart';

/// Represents the state of PageSeven in the application.
class PageSevenState extends Equatable {
  PageSevenState({this.pageSevenModelObj});

  PageSevenModel? pageSevenModelObj;

  @override
  List<Object?> get props => [
        pageSevenModelObj,
      ];

  PageSevenState copyWith({PageSevenModel? pageSevenModelObj}) {
    return PageSevenState(
      pageSevenModelObj: pageSevenModelObj ?? this.pageSevenModelObj,
    );
  }
}
