// ignore_for_file: must_be_immutable

part of 'page_six_notifier.dart';

/// Represents the state of PageSix in the application.
class PageSixState extends Equatable {
  PageSixState({
    this.emailController,
    this.pageSixModelObj,
  });

  TextEditingController? emailController;

  PageSixModel? pageSixModelObj;

  @override
  List<Object?> get props => [
        emailController,
        pageSixModelObj,
      ];

  PageSixState copyWith({
    TextEditingController? emailController,
    PageSixModel? pageSixModelObj,
  }) {
    return PageSixState(
      emailController: emailController ?? this.emailController,
      pageSixModelObj: pageSixModelObj ?? this.pageSixModelObj,
    );
  }
}
