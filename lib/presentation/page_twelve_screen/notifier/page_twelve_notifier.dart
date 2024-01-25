import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_twelve_screen/models/page_twelve_model.dart';
part 'page_twelve_state.dart';

final pageTwelveNotifier =
    StateNotifierProvider<PageTwelveNotifier, PageTwelveState>(
  (ref) => PageTwelveNotifier(PageTwelveState(
    pageTwelveModelObj: PageTwelveModel(),
  )),
);

/// A notifier that manages the state of a PageTwelve according to the event that is dispatched to it.
class PageTwelveNotifier extends StateNotifier<PageTwelveState> {
  PageTwelveNotifier(PageTwelveState state) : super(state) {}
}
