import '../../../core/app_export.dart';

/// This class is used in the [servicespagetwogrid_item_widget] screen.
class ServicespagetwogridItemModel {
  ServicespagetwogridItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? "Tasks";
    id = id ?? "";
  }

  String? group;

  String? id;
}
