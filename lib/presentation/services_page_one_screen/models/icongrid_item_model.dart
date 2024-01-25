import '../../../core/app_export.dart';

/// This class is used in the [icongrid_item_widget] screen.
class IcongridItemModel {
  IcongridItemModel({
    this.icon,
    this.text,
    this.id,
  }) {
    icon = icon ?? ImageConstant.imgMdiSecureOutlineOnerrorcontainer;
    text = text ?? "Secure \naccount";
    id = id ?? "";
  }

  String? icon;

  String? text;

  String? id;
}
