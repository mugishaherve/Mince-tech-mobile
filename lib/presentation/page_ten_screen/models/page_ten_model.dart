// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'resetpasswordpage_item_model.dart';

/// This class defines the variables used in the [page_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PageTenModel extends Equatable {
  PageTenModel({this.resetpasswordpageItemList = const []}) {}

  List<ResetpasswordpageItemModel> resetpasswordpageItemList;

  PageTenModel copyWith(
      {List<ResetpasswordpageItemModel>? resetpasswordpageItemList}) {
    return PageTenModel(
      resetpasswordpageItemList:
          resetpasswordpageItemList ?? this.resetpasswordpageItemList,
    );
  }

  @override
  List<Object?> get props => [resetpasswordpageItemList];
}
