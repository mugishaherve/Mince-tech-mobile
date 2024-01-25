// ignore_for_file: must_be_immutable

part of 'page_two_notifier.dart';

/// Represents the state of PageTwo in the application.
class PageTwoState extends Equatable {
  PageTwoState({
    this.searchController,
    this.pageTwoModelObj,
  });

  TextEditingController? searchController;

  PageTwoModel? pageTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pageTwoModelObj,
      ];

  PageTwoState copyWith({
    TextEditingController? searchController,
    PageTwoModel? pageTwoModelObj,
  }) {
    return PageTwoState(
      searchController: searchController ?? this.searchController,
      pageTwoModelObj: pageTwoModelObj ?? this.pageTwoModelObj,
    );
  }
}
