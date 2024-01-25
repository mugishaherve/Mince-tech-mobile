import '../../../core/app_export.dart';

/// This class is used in the [fiftysix_item_widget] screen.
class FiftysixItemModel {
  FiftysixItemModel({
    this.secureIcon,
    this.secureText,
    this.id,
  }) {
    secureIcon = secureIcon ?? ImageConstant.imgMdiSecureOutline;
    secureText = secureText ?? "Secure \naccount";
    id = id ?? "";
  }

  String? secureIcon;

  String? secureText;

  String? id;
}
