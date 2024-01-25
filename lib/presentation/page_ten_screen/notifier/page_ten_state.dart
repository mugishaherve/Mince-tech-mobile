// ignore_for_file: must_be_immutable

part of 'page_ten_notifier.dart';

/// Represents the state of PageTen in the application.
class PageTenState extends Equatable {
  PageTenState({this.pageTenModelObj});

  PageTenModel? pageTenModelObj;

  @override
  List<Object?> get props => [
        pageTenModelObj,
      ];

  PageTenState copyWith({PageTenModel? pageTenModelObj}) {
    return PageTenState(
      pageTenModelObj: pageTenModelObj ?? this.pageTenModelObj,
    );
  }
}
