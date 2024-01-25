import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_eight_screen/models/page_eight_model.dart';
part 'page_eight_state.dart';

final pageEightNotifier =
    StateNotifierProvider<PageEightNotifier, PageEightState>(
  (ref) => PageEightNotifier(PageEightState(
    emailEditTextController: TextEditingController(),
    newPasswordEditTextController: TextEditingController(),
    confirmPasswordEditTextController: TextEditingController(),
    isShowPassword: false,
    isShowPassword1: false,
    pageEightModelObj: PageEightModel(),
  )),
);

/// A notifier that manages the state of a PageEight according to the event that is dispatched to it.
class PageEightNotifier extends StateNotifier<PageEightState> {
  PageEightNotifier(PageEightState state) : super(state) {}

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }

  void changePasswordVisibility1() {
    state = state.copyWith(isShowPassword1: !(state.isShowPassword1 ?? false));
  }
}
