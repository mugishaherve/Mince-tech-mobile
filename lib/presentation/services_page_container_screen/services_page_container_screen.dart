import 'notifier/services_page_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';
import 'package:mince_tech/presentation/services_page/services_page.dart';
import 'package:mince_tech/presentation/services_page_four_page/services_page_four_page.dart';
import 'package:mince_tech/widgets/custom_bottom_bar.dart';

class ServicesPageContainerScreen extends ConsumerStatefulWidget {
  const ServicesPageContainerScreen({Key? key}) : super(key: key);

  @override
  ServicesPageContainerScreenState createState() =>
      ServicesPageContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ServicesPageContainerScreenState
    extends ConsumerState<ServicesPageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.servicesPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
