// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fiftysix_item_model.dart';
import 'viewhierarchysection_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.fiftysixItemList = const [],
    this.viewhierarchysectionItemList = const [],
  }) {}

  List<FiftysixItemModel> fiftysixItemList;

  List<ViewhierarchysectionItemModel> viewhierarchysectionItemList;

  HomeModel copyWith({
    List<FiftysixItemModel>? fiftysixItemList,
    List<ViewhierarchysectionItemModel>? viewhierarchysectionItemList,
  }) {
    return HomeModel(
      fiftysixItemList: fiftysixItemList ?? this.fiftysixItemList,
      viewhierarchysectionItemList:
          viewhierarchysectionItemList ?? this.viewhierarchysectionItemList,
    );
  }

  @override
  List<Object?> get props => [fiftysixItemList, viewhierarchysectionItemList];
}
