import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_thirteen_one_screen/models/page_thirteen_one_model.dart';
part 'page_thirteen_one_state.dart';

final pageThirteenOneNotifier =
    StateNotifierProvider<PageThirteenOneNotifier, PageThirteenOneState>(
  (ref) => PageThirteenOneNotifier(PageThirteenOneState(
    pageThirteenOneModelObj: PageThirteenOneModel(),
  )),
);

/// A notifier that manages the state of a PageThirteenOne according to the event that is dispatched to it.
class PageThirteenOneNotifier extends StateNotifier<PageThirteenOneState> {
  PageThirteenOneNotifier(PageThirteenOneState state) : super(state) {}
}
