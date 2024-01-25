import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_two_screen/models/page_two_model.dart';
part 'page_two_state.dart';

final pageTwoNotifier = StateNotifierProvider<PageTwoNotifier, PageTwoState>(
  (ref) => PageTwoNotifier(PageTwoState(
    searchController: TextEditingController(),
    pageTwoModelObj: PageTwoModel(),
  )),
);

/// A notifier that manages the state of a PageTwo according to the event that is dispatched to it.
class PageTwoNotifier extends StateNotifier<PageTwoState> {
  PageTwoNotifier(PageTwoState state) : super(state) {}
}
