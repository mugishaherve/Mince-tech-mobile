// ignore_for_file: must_be_immutable

part of 'page_one_notifier.dart';

/// Represents the state of PageOne in the application.
class PageOneState extends Equatable {
  PageOneState({this.pageOneModelObj});

  PageOneModel? pageOneModelObj;

  @override
  List<Object?> get props => [
        pageOneModelObj,
      ];

  PageOneState copyWith({PageOneModel? pageOneModelObj}) {
    return PageOneState(
      pageOneModelObj: pageOneModelObj ?? this.pageOneModelObj,
    );
  }
}
