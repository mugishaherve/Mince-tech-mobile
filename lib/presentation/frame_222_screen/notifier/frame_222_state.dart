// ignore_for_file: must_be_immutable

part of 'frame_222_notifier.dart';

/// Represents the state of Frame222 in the application.
class Frame222State extends Equatable {
  Frame222State({this.frame222ModelObj});

  Frame222Model? frame222ModelObj;

  @override
  List<Object?> get props => [
        frame222ModelObj,
      ];

  Frame222State copyWith({Frame222Model? frame222ModelObj}) {
    return Frame222State(
      frame222ModelObj: frame222ModelObj ?? this.frame222ModelObj,
    );
  }
}
