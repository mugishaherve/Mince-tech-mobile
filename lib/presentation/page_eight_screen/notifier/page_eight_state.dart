// ignore_for_file: must_be_immutable

part of 'page_eight_notifier.dart';

/// Represents the state of PageEight in the application.
class PageEightState extends Equatable {
  PageEightState({
    this.emailEditTextController,
    this.newPasswordEditTextController,
    this.confirmPasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.pageEightModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? newPasswordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  PageEightModel? pageEightModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        emailEditTextController,
        newPasswordEditTextController,
        confirmPasswordEditTextController,
        isShowPassword,
        isShowPassword1,
        pageEightModelObj,
      ];

  PageEightState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? newPasswordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    PageEightModel? pageEightModelObj,
  }) {
    return PageEightState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      newPasswordEditTextController:
          newPasswordEditTextController ?? this.newPasswordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      pageEightModelObj: pageEightModelObj ?? this.pageEightModelObj,
    );
  }
}
