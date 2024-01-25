import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/page_four_screen/models/page_four_model.dart';
part 'page_four_state.dart';

final pageFourNotifier = StateNotifierProvider<PageFourNotifier, PageFourState>(
    (ref) =>
        PageFourNotifier(PageFourState(pageFourModelObj: PageFourModel())));

/// A notifier that manages the state of a PageFour according to the event that is dispatched to it.
class PageFourNotifier extends StateNotifier<PageFourState> {
  PageFourNotifier(PageFourState state) : super(state);
}
