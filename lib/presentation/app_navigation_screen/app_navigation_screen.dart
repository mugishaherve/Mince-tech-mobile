import 'notifier/app_navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frameTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 222".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame222Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Seven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Eleven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Twelve One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageTwelveOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Thirteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spah screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spahScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Twelve".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page Thirteen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageThirteenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home page - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePageTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services Page One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.servicesPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services Page - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.servicesPageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services Page Three - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.servicesPageThreeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services Page Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.servicesPageTwoScreen),
                        ),
                      ],
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

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
