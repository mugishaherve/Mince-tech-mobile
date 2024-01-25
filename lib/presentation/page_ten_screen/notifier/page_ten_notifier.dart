import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/resetpasswordpage_item_model.dart';
import 'package:mince_tech/presentation/page_ten_screen/models/page_ten_model.dart';
part 'page_ten_state.dart';

final pageTenNotifier = StateNotifierProvider<PageTenNotifier, PageTenState>(
  (ref) => PageTenNotifier(PageTenState(
    pageTenModelObj: PageTenModel(resetpasswordpageItemList: [
      ResetpasswordpageItemModel(ellipse: ImageConstant.imgEllipse117)
    ]),
  )),
);

/// A notifier that manages the state of a PageTen according to the event that is dispatched to it.
class PageTenNotifier extends StateNotifier<PageTenState> {
  PageTenNotifier(PageTenState state) : super(state) {}
}
