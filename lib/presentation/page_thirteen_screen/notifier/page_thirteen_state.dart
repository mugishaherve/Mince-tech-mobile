// ignore_for_file: must_be_immutable

part of 'page_thirteen_notifier.dart';

/// Represents the state of PageThirteen in the application.
class PageThirteenState extends Equatable {
  PageThirteenState({
    this.otpController,
    this.pageThirteenModelObj,
  });

  TextEditingController? otpController;

  PageThirteenModel? pageThirteenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        pageThirteenModelObj,
      ];

  PageThirteenState copyWith({
    TextEditingController? otpController,
    PageThirteenModel? pageThirteenModelObj,
  }) {
    return PageThirteenState(
      otpController: otpController ?? this.otpController,
      pageThirteenModelObj: pageThirteenModelObj ?? this.pageThirteenModelObj,
    );
  }
}
