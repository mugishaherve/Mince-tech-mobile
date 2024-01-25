// ignore_for_file: must_be_immutable

part of 'page_eleven_notifier.dart';

/// Represents the state of PageEleven in the application.
class PageElevenState extends Equatable {
  PageElevenState({this.pageElevenModelObj});

  PageElevenModel? pageElevenModelObj;

  @override
  List<Object?> get props => [
        pageElevenModelObj,
      ];

  PageElevenState copyWith({PageElevenModel? pageElevenModelObj}) {
    return PageElevenState(
      pageElevenModelObj: pageElevenModelObj ?? this.pageElevenModelObj,
    );
  }
}
