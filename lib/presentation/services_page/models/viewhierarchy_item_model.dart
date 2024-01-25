import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.backendDevelopmentText,
    this.id,
  }) {
    backendDevelopmentText = backendDevelopmentText ?? "Backend development";
    id = id ?? "";
  }

  String? backendDevelopmentText;

  String? id;
}
