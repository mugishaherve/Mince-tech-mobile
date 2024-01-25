import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_nine_screen/models/page_nine_model.dart';
part 'page_nine_state.dart';

final pageNineNotifier = StateNotifierProvider<PageNineNotifier, PageNineState>(
  (ref) => PageNineNotifier(PageNineState(
    emailEditTextController: TextEditingController(),
    firstNameEditTextController: TextEditingController(),
    lastNameEditTextController: TextEditingController(),
    newPasswordEditTextController: TextEditingController(),
    confirmPasswordEditTextController: TextEditingController(),
    isShowPassword: false,
    isShowPassword1: false,
    pageNineModelObj: PageNineModel(),
  )),
);

/// A notifier that manages the state of a PageNine according to the event that is dispatched to it.
class PageNineNotifier extends StateNotifier<PageNineState> {
  PageNineNotifier(PageNineState state) : super(state) {}

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }

  void changePasswordVisibility1() {
    state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false));
  }
}
