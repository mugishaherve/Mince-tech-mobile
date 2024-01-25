import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchysection_item_widget] screen.
class ViewhierarchysectionItemModel {
  ViewhierarchysectionItemModel({
    this.backendDevelopment,
    this.userName1,
    this.timePeriod,
    this.progressImage,
    this.progressText,
    this.id,
  }) {
    backendDevelopment = backendDevelopment ?? "Backend development";
    userName1 = userName1 ?? "Angele K";
    timePeriod = timePeriod ?? "2 days";
    progressImage =
        progressImage ?? ImageConstant.imgStreamlinegrapharrowincrease;
    progressText = progressText ?? "Progress";
    id = id ?? "";
  }

  String? backendDevelopment;

  String? userName1;

  String? timePeriod;

  String? progressImage;

  String? progressText;

  String? id;
}
