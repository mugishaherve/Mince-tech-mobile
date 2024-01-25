import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_twelve_one_screen/models/page_twelve_one_model.dart';
part 'page_twelve_one_state.dart';

final pageTwelveOneNotifier =
    StateNotifierProvider<PageTwelveOneNotifier, PageTwelveOneState>(
  (ref) => PageTwelveOneNotifier(PageTwelveOneState(
    pageTwelveOneModelObj: PageTwelveOneModel(),
  )),
);

/// A notifier that manages the state of a PageTwelveOne according to the event that is dispatched to it.
class PageTwelveOneNotifier extends StateNotifier<PageTwelveOneState> {
  PageTwelveOneNotifier(PageTwelveOneState state) : super(state) {}
}
