import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_five_screen/models/page_five_model.dart';
part 'page_five_state.dart';

final pageFiveNotifier = StateNotifierProvider<PageFiveNotifier, PageFiveState>(
  (ref) => PageFiveNotifier(PageFiveState(
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    isShowPassword: false,
    pageFiveModelObj: PageFiveModel(),
  )),
);

/// A notifier that manages the state of a PageFive according to the event that is dispatched to it.
class PageFiveNotifier extends StateNotifier<PageFiveState> {
  PageFiveNotifier(PageFiveState state) : super(state) {}

  void changePasswordVisibility() {
    state = state.copyWith(isShowPassword: !(state.isShowPassword ?? false));
  }
}
