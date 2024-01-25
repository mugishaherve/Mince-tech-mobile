import '../models/fiftysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FiftysixItemWidget extends StatelessWidget {
  FiftysixItemWidget(
    this.fiftysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftysixItemModel fiftysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 53.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.only(
            top: 197.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.outlineBlack,
                child: CustomImageView(
                  imagePath: fiftysixItemModelObj?.secureIcon,
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 51.h,
                  child: Text(
                    fiftysixItemModelObj.secureText!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray900.copyWith(
                      height: 1.31,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
