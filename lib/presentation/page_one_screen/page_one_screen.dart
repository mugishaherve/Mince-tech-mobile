import 'notifier/page_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

class PageOneScreen extends ConsumerStatefulWidget {
  const PageOneScreen({Key? key}) : super(key: key);

  @override
  PageOneScreenState createState() => PageOneScreenState();
}

class PageOneScreenState extends ConsumerState<PageOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(1.35, -0.09),
                        end: Alignment(0, 1.34),
                        colors: [
                      appTheme.gray900,
                      appTheme.gray900,
                      theme.colorScheme.primary
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 283.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo3,
                          height: 79.v,
                          width: 113.h),
                      SizedBox(height: 27.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_mince".tr,
                                style: CustomTextStyles.headlineMediumffffffff),
                            TextSpan(
                                text: "lbl_tech".tr,
                                style: theme.textTheme.headlineMedium)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 5.v)
                    ])))));
  }
}
