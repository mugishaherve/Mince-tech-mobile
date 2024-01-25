import '../models/resetpasswordpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

// ignore: must_be_immutable
class ResetpasswordpageItemWidget extends StatelessWidget {
  ResetpasswordpageItemWidget(
    this.resetpasswordpageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ResetpasswordpageItemModel resetpasswordpageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomImageView(
        imagePath: resetpasswordpageItemModelObj?.ellipse,
        height: 295.v,
        width: 151.h,
      ),
    );
  }
}
