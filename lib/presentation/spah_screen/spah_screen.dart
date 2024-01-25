import 'notifier/spah_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

class SpahScreen extends ConsumerStatefulWidget {
  const SpahScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SpahScreenState createState() => SpahScreenState();
}

class SpahScreenState extends ConsumerState<SpahScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 202.v),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogo3,
                height: 101.v,
                width: 117.h,
                margin: EdgeInsets.only(
                  top: 165.v,
                  bottom: 214.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1111,
                height: 295.v,
                width: 151.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  bottom: 185.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
