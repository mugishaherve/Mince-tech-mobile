import '../../../core/app_export.dart';

/// This class is used in the [resetpasswordpage_item_widget] screen.
class ResetpasswordpageItemModel {
  ResetpasswordpageItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse117;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
