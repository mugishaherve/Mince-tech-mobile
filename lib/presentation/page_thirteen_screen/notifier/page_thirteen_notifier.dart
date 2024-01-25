import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_thirteen_screen/models/page_thirteen_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'page_thirteen_state.dart';

final pageThirteenNotifier =
    StateNotifierProvider<PageThirteenNotifier, PageThirteenState>(
  (ref) => PageThirteenNotifier(PageThirteenState(
    otpController: TextEditingController(),
    pageThirteenModelObj: PageThirteenModel(),
  )),
);

/// A notifier that manages the state of a PageThirteen according to the event that is dispatched to it.
class PageThirteenNotifier extends StateNotifier<PageThirteenState>
    with CodeAutoFill {
  PageThirteenNotifier(PageThirteenState state) : super(state) {}

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
