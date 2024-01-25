import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mince_tech/presentation/spah_screen/models/spah_model.dart';
part 'spah_state.dart';

final spahNotifier = StateNotifierProvider<SpahNotifier, SpahState>(
  (ref) => SpahNotifier(SpahState(
    spahModelObj: SpahModel(),
  )),
);

/// A notifier that manages the state of a Spah according to the event that is dispatched to it.
class SpahNotifier extends StateNotifier<SpahState> {
  SpahNotifier(SpahState state) : super(state) {}
}
