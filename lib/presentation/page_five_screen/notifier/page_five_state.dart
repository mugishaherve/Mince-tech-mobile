// ignore_for_file: must_be_immutable

part of 'page_five_notifier.dart';

/// Represents the state of PageFive in the application.
class PageFiveState extends Equatable {
  PageFiveState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.pageFiveModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  PageFiveModel? pageFiveModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        pageFiveModelObj,
      ];

  PageFiveState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    PageFiveModel? pageFiveModelObj,
  }) {
    return PageFiveState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      pageFiveModelObj: pageFiveModelObj ?? this.pageFiveModelObj,
    );
  }
}
