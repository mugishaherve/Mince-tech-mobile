import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/frame_222_screen/models/frame_222_model.dart';
part 'frame_222_state.dart';

final frame222Notifier = StateNotifierProvider<Frame222Notifier, Frame222State>(
  (ref) => Frame222Notifier(Frame222State(
    frame222ModelObj: Frame222Model(),
  )),
);

/// A notifier that manages the state of a Frame222 according to the event that is dispatched to it.
class Frame222Notifier extends StateNotifier<Frame222State> {
  Frame222Notifier(Frame222State state) : super(state) {}
}
