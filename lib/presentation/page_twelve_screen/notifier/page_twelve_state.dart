// ignore_for_file: must_be_immutable

part of 'page_twelve_notifier.dart';

/// Represents the state of PageTwelve in the application.
class PageTwelveState extends Equatable {
  PageTwelveState({this.pageTwelveModelObj});

  PageTwelveModel? pageTwelveModelObj;

  @override
  List<Object?> get props => [
        pageTwelveModelObj,
      ];

  PageTwelveState copyWith({PageTwelveModel? pageTwelveModelObj}) {
    return PageTwelveState(
      pageTwelveModelObj: pageTwelveModelObj ?? this.pageTwelveModelObj,
    );
  }
}
