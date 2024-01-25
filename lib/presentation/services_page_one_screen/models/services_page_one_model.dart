// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'icongrid_item_model.dart';
import 'gameicongrid_item_model.dart';

/// This class defines the variables used in the [services_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesPageOneModel extends Equatable {
  ServicesPageOneModel({
    this.icongridItemList = const [],
    this.gameicongridItemList = const [],
  }) {}

  List<IcongridItemModel> icongridItemList;

  List<GameicongridItemModel> gameicongridItemList;

  ServicesPageOneModel copyWith({
    List<IcongridItemModel>? icongridItemList,
    List<GameicongridItemModel>? gameicongridItemList,
  }) {
    return ServicesPageOneModel(
      icongridItemList: icongridItemList ?? this.icongridItemList,
      gameicongridItemList: gameicongridItemList ?? this.gameicongridItemList,
    );
  }

  @override
  List<Object?> get props => [icongridItemList, gameicongridItemList];
}
