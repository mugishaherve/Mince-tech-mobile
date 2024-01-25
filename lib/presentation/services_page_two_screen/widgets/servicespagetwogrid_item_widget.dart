import '../models/servicespagetwogrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

// ignore: must_be_immutable
class ServicespagetwogridItemWidget extends StatelessWidget {
  ServicespagetwogridItemWidget(
    this.servicespagetwogridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ServicespagetwogridItemModel servicespagetwogridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 100.h,
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Text(
          servicespagetwogridItemModelObj.group!,
          style: CustomTextStyles.titleSmallOnErrorContainer,
        ),
      ),
    );
  }
}
