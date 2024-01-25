import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_one_screen/models/page_one_model.dart';
part 'page_one_state.dart';

final pageOneNotifier = StateNotifierProvider<PageOneNotifier, PageOneState>(
    (ref) => PageOneNotifier(PageOneState(pageOneModelObj: PageOneModel())));

/// A notifier that manages the state of a PageOne according to the event that is dispatched to it.
class PageOneNotifier extends StateNotifier<PageOneState> {
  PageOneNotifier(PageOneState state) : super(state);
}
