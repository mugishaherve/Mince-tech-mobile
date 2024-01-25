import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_seven_screen/models/page_seven_model.dart';
part 'page_seven_state.dart';

final pageSevenNotifier =
    StateNotifierProvider<PageSevenNotifier, PageSevenState>(
  (ref) => PageSevenNotifier(PageSevenState(
    pageSevenModelObj: PageSevenModel(),
  )),
);

/// A notifier that manages the state of a PageSeven according to the event that is dispatched to it.
class PageSevenNotifier extends StateNotifier<PageSevenState> {
  PageSevenNotifier(PageSevenState state) : super(state) {}
}
