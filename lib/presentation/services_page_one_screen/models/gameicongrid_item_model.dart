import '../../../core/app_export.dart';

/// This class is used in the [gameicongrid_item_widget] screen.
class GameicongridItemModel {
  GameicongridItemModel({
    this.gameIcon,
    this.payText,
    this.id,
  }) {
    gameIcon = gameIcon ?? ImageConstant.imgGameIconsPayMoneyOnerrorcontainer;
    payText = payText ?? "Pay with\nus";
    id = id ?? "";
  }

  String? gameIcon;

  String? payText;

  String? id;
}
