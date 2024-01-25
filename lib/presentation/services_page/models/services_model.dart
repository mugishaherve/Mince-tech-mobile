// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [services_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesModel extends Equatable {
  ServicesModel({this.viewhierarchyItemList = const []}) {}

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  ServicesModel copyWith(
      {List<ViewhierarchyItemModel>? viewhierarchyItemList}) {
    return ServicesModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList];
}
