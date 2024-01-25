import 'notifier/frame_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

class FrameTwoScreen extends ConsumerStatefulWidget {
  const FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameTwoScreenState createState() => FrameTwoScreenState();
}

class FrameTwoScreenState extends ConsumerState<FrameTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 317.v,
          width: 420.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 151.h,
                    vertical: 97.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder50,
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup82,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 23.v),
                      Container(
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 28.v,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder50,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 43.v,
                          width: 38.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup83,
                height: 247.v,
                width: 168.h,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
