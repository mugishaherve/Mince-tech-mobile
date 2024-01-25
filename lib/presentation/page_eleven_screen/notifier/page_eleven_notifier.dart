import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_eleven_screen/models/page_eleven_model.dart';
part 'page_eleven_state.dart';

final pageElevenNotifier =
    StateNotifierProvider<PageElevenNotifier, PageElevenState>(
  (ref) => PageElevenNotifier(PageElevenState(
    pageElevenModelObj: PageElevenModel(),
  )),
);

/// A notifier that manages the state of a PageEleven according to the event that is dispatched to it.
class PageElevenNotifier extends StateNotifier<PageElevenState> {
  PageElevenNotifier(PageElevenState state) : super(state) {}
}
