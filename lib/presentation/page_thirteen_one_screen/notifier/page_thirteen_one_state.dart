// ignore_for_file: must_be_immutable

part of 'page_thirteen_one_notifier.dart';

/// Represents the state of PageThirteenOne in the application.
class PageThirteenOneState extends Equatable {
  PageThirteenOneState({this.pageThirteenOneModelObj});

  PageThirteenOneModel? pageThirteenOneModelObj;

  @override
  List<Object?> get props => [
        pageThirteenOneModelObj,
      ];

  PageThirteenOneState copyWith(
      {PageThirteenOneModel? pageThirteenOneModelObj}) {
    return PageThirteenOneState(
      pageThirteenOneModelObj:
          pageThirteenOneModelObj ?? this.pageThirteenOneModelObj,
    );
  }
}
