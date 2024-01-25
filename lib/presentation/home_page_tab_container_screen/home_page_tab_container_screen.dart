import 'notifier/home_page_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/presentation/home_page/home_page.dart';
import 'package:mince_tech/presentation/services_page/services_page.dart';
import 'package:mince_tech/presentation/services_page_four_page/services_page_four_page.dart';
import 'package:mince_tech/widgets/app_bar/appbar_subtitle.dart';
import 'package:mince_tech/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mince_tech/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mince_tech/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_bottom_bar.dart';

class HomePageTabContainerScreen extends ConsumerStatefulWidget {
  const HomePageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageTabContainerScreenState createState() =>
      HomePageTabContainerScreenState();
}

class HomePageTabContainerScreenState
    extends ConsumerState<HomePageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 654.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            HomePage(),
                            HomePage(),
                            HomePage(),
                            HomePage(),
                            HomePage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 35.h),
        child: Row(
          children: [
            SizedBox(
              height: 51.v,
              child: VerticalDivider(
                width: 2.h,
                thickness: 2.v,
                color: theme.colorScheme.errorContainer,
                indent: 6.h,
                endIndent: 2.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                children: [
                  AppbarSubtitleOne(
                    text: "lbl_us_dolars".tr,
                  ),
                  AppbarSubtitle(
                    text: "lbl_0_4".tr,
                    margin: EdgeInsets.only(right: 44.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgPhBell,
          margin: EdgeInsets.only(
            left: 26.h,
            top: 10.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgGroup201,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 9.v,
            right: 36.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 42.v,
      width: 409.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onErrorContainer,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_new".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_popular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_for_you".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_recent".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lucidelayoutdashboardprimary:
        return AppRoutes.servicesPage;
      case BottomBarEnum.Mdicontractoutlinegray600:
        return "/";
      case BottomBarEnum.Lafilecontractgray600:
        return "/";
      case BottomBarEnum.Octicongraph24gray600:
        return AppRoutes.servicesPageFourPage;
      case BottomBarEnum.Iconamoonprofilecirclegray600:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.servicesPage:
        return ServicesPage();
      case AppRoutes.servicesPageFourPage:
        return ServicesPageFourPage();
      default:
        return DefaultWidget();
    }
  }
}
