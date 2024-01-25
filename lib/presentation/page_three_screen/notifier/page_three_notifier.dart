import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_three_screen/models/page_three_model.dart';
part 'page_three_state.dart';

final pageThreeNotifier =
    StateNotifierProvider<PageThreeNotifier, PageThreeState>(
  (ref) => PageThreeNotifier(PageThreeState(
    pageThreeModelObj: PageThreeModel(),
  )),
);

/// A notifier that manages the state of a PageThree according to the event that is dispatched to it.
class PageThreeNotifier extends StateNotifier<PageThreeState> {
  PageThreeNotifier(PageThreeState state) : super(state) {}
}
