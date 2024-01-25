import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_six_screen/models/page_six_model.dart';
part 'page_six_state.dart';

final pageSixNotifier = StateNotifierProvider<PageSixNotifier, PageSixState>(
  (ref) => PageSixNotifier(PageSixState(
    emailController: TextEditingController(),
    pageSixModelObj: PageSixModel(),
  )),
);

/// A notifier that manages the state of a PageSix according to the event that is dispatched to it.
class PageSixNotifier extends StateNotifier<PageSixState> {
  PageSixNotifier(PageSixState state) : super(state) {}
}
