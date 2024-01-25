// ignore_for_file: must_be_immutable

part of 'page_twelve_one_notifier.dart';

/// Represents the state of PageTwelveOne in the application.
class PageTwelveOneState extends Equatable {
  PageTwelveOneState({this.pageTwelveOneModelObj});

  PageTwelveOneModel? pageTwelveOneModelObj;

  @override
  List<Object?> get props => [
        pageTwelveOneModelObj,
      ];

  PageTwelveOneState copyWith({PageTwelveOneModel? pageTwelveOneModelObj}) {
    return PageTwelveOneState(
      pageTwelveOneModelObj:
          pageTwelveOneModelObj ?? this.pageTwelveOneModelObj,
    );
  }
}
