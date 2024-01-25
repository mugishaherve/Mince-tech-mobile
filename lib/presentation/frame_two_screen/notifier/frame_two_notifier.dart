import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/frame_two_screen/models/frame_two_model.dart';
part 'frame_two_state.dart';

final frameTwoNotifier = StateNotifierProvider<FrameTwoNotifier, FrameTwoState>(
  (ref) => FrameTwoNotifier(FrameTwoState(
    frameTwoModelObj: FrameTwoModel(),
  )),
);

/// A notifier that manages the state of a FrameTwo according to the event that is dispatched to it.
class FrameTwoNotifier extends StateNotifier<FrameTwoState> {
  FrameTwoNotifier(FrameTwoState state) : super(state) {}
}
