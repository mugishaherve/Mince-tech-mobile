import 'notifier/services_page_three_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/presentation/services_page/services_page.dart';
import 'package:mince_tech/presentation/services_page_four_page/services_page_four_page.dart';
import 'package:mince_tech/presentation/services_page_three_page/services_page_three_page.dart';
import 'package:mince_tech/widgets/app_bar/appbar_leading_image.dart';
import 'package:mince_tech/widgets/app_bar/appbar_title.dart';
import 'package:mince_tech/widgets/app_bar/custom_app_bar.dart';
import 'package:mince_tech/widgets/custom_bottom_bar.dart';

class ServicesPageThreeTabContainerScreen extends ConsumerStatefulWidget {
  const ServicesPageThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesPageThreeTabContainerScreenState createState() =>
      ServicesPageThreeTabContainerScreenState();
}

class ServicesPageThreeTabContainerScreenState
    extends ConsumerState<ServicesPageThreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              SizedBox(height: 3.v),
              Container(
                height: 42.v,
                width: 312.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
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
                        "lbl_all".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_going_on".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_complete".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 673.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ServicesPageThreePage(),
                      ServicesPageThreePage(),
                      ServicesPageThreePage(),
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
      leadingWidth: 62.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEpArrowUpBold,
        margin: EdgeInsets.only(
          left: 34.h,
          top: 13.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_contrats".tr,
        margin: EdgeInsets.only(left: 97.h),
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
