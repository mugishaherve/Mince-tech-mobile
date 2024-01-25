import 'package:flutter/material.dart';
import 'package:mince_tech/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:mince_tech/presentation/frame_222_screen/frame_222_screen.dart';
import 'package:mince_tech/presentation/page_one_screen/page_one_screen.dart';
import 'package:mince_tech/presentation/page_two_screen/page_two_screen.dart';
import 'package:mince_tech/presentation/page_three_screen/page_three_screen.dart';
import 'package:mince_tech/presentation/page_four_screen/page_four_screen.dart';
import 'package:mince_tech/presentation/page_five_screen/page_five_screen.dart';
import 'package:mince_tech/presentation/page_six_screen/page_six_screen.dart';
import 'package:mince_tech/presentation/page_seven_screen/page_seven_screen.dart';
import 'package:mince_tech/presentation/page_eight_screen/page_eight_screen.dart';
import 'package:mince_tech/presentation/page_nine_screen/page_nine_screen.dart';
import 'package:mince_tech/presentation/page_ten_screen/page_ten_screen.dart';
import 'package:mince_tech/presentation/page_eleven_screen/page_eleven_screen.dart';
import 'package:mince_tech/presentation/page_twelve_one_screen/page_twelve_one_screen.dart';
import 'package:mince_tech/presentation/page_thirteen_screen/page_thirteen_screen.dart';
import 'package:mince_tech/presentation/spah_screen/spah_screen.dart';
import 'package:mince_tech/presentation/page_twelve_screen/page_twelve_screen.dart';
import 'package:mince_tech/presentation/page_thirteen_one_screen/page_thirteen_one_screen.dart';
import 'package:mince_tech/presentation/home_page_tab_container_screen/home_page_tab_container_screen.dart';
import 'package:mince_tech/presentation/services_page_one_screen/services_page_one_screen.dart';
import 'package:mince_tech/presentation/services_page_container_screen/services_page_container_screen.dart';
import 'package:mince_tech/presentation/services_page_three_tab_container_screen/services_page_three_tab_container_screen.dart';
import 'package:mince_tech/presentation/services_page_two_screen/services_page_two_screen.dart';
import 'package:mince_tech/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameTwoScreen = '/frame_two_screen';

  static const String frame222Screen = '/frame_222_screen';

  static const String pageOneScreen = '/page_one_screen';

  static const String pageTwoScreen = '/page_two_screen';

  static const String pageThreeScreen = '/page_three_screen';

  static const String pageFourScreen = '/page_four_screen';

  static const String pageFiveScreen = '/page_five_screen';

  static const String pageSixScreen = '/page_six_screen';

  static const String pageSevenScreen = '/page_seven_screen';

  static const String pageEightScreen = '/page_eight_screen';

  static const String pageNineScreen = '/page_nine_screen';

  static const String pageTenScreen = '/page_ten_screen';

  static const String pageElevenScreen = '/page_eleven_screen';

  static const String pageTwelveOneScreen = '/page_twelve_one_screen';

  static const String pageThirteenScreen = '/page_thirteen_screen';

  static const String spahScreen = '/spah_screen';

  static const String pageTwelveScreen = '/page_twelve_screen';

  static const String pageThirteenOneScreen = '/page_thirteen_one_screen';

  static const String homePage = '/home_page';

  static const String homePageTabContainerScreen =
      '/home_page_tab_container_screen';

  static const String servicesPageOneScreen = '/services_page_one_screen';

  static const String servicesPageFourPage = '/services_page_four_page';

  static const String servicesPage = '/services_page';

  static const String servicesPageContainerScreen =
      '/services_page_container_screen';

  static const String servicesPageThreePage = '/services_page_three_page';

  static const String servicesPageThreeTabContainerScreen =
      '/services_page_three_tab_container_screen';

  static const String servicesPageTwoScreen = '/services_page_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    frameTwoScreen: (context) => FrameTwoScreen(),
    frame222Screen: (context) => Frame222Screen(),
    pageOneScreen: (context) => PageOneScreen(),
    pageTwoScreen: (context) => PageTwoScreen(),
    pageThreeScreen: (context) => PageThreeScreen(),
    pageFourScreen: (context) => PageFourScreen(),
    pageFiveScreen: (context) => PageFiveScreen(),
    pageSixScreen: (context) => PageSixScreen(),
    pageSevenScreen: (context) => PageSevenScreen(),
    pageEightScreen: (context) => PageEightScreen(),
    pageNineScreen: (context) => PageNineScreen(),
    pageTenScreen: (context) => PageTenScreen(),
    pageElevenScreen: (context) => PageElevenScreen(),
    pageTwelveOneScreen: (context) => PageTwelveOneScreen(),
    pageThirteenScreen: (context) => PageThirteenScreen(),
    spahScreen: (context) => SpahScreen(),
    pageTwelveScreen: (context) => PageTwelveScreen(),
    pageThirteenOneScreen: (context) => PageThirteenOneScreen(),
    homePageTabContainerScreen: (context) => HomePageTabContainerScreen(),
    servicesPageOneScreen: (context) => ServicesPageOneScreen(),
    servicesPageContainerScreen: (context) => ServicesPageContainerScreen(),
    servicesPageThreeTabContainerScreen: (context) =>
        ServicesPageThreeTabContainerScreen(),
    servicesPageTwoScreen: (context) => ServicesPageTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => PageOneScreen(),
  };
}
