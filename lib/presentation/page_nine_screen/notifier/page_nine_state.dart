// ignore_for_file: must_be_immutable

part of 'page_nine_notifier.dart';

/// Represents the state of PageNine in the application.
class PageNineState extends Equatable {
  PageNineState({
    this.emailEditTextController,
    this.firstNameEditTextController,
    this.lastNameEditTextController,
    this.newPasswordEditTextController,
    this.confirmPasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.pageNineModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? firstNameEditTextController;

  TextEditingController? lastNameEditTextController;

  TextEditingController? newPasswordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  PageNineModel? pageNineModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        emailEditTextController,
        firstNameEditTextController,
        lastNameEditTextController,
        newPasswordEditTextController,
        confirmPasswordEditTextController,
        isShowPassword,
        isShowPassword1,
        pageNineModelObj,
      ];

  PageNineState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? firstNameEditTextController,
    TextEditingController? lastNameEditTextController,
    TextEditingController? newPasswordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    PageNineModel? pageNineModelObj,
  }) {
    return PageNineState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      firstNameEditTextController:
          firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:
          lastNameEditTextController ?? this.lastNameEditTextController,
      newPasswordEditTextController:
          newPasswordEditTextController ?? this.newPasswordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      pageNineModelObj: pageNineModelObj ?? this.pageNineModelObj,
    );
  }
}
