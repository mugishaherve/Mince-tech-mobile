import 'package:flutter/material.dart';
import 'package:mince_tech/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgLucideLayoutDashboardPrimary,
      activeIcon: ImageConstant.imgLucideLayoutDashboardPrimary,
      type: BottomBarEnum.Lucidelayoutdashboardprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMdiContractOutlineGray600,
      activeIcon: ImageConstant.imgMdiContractOutlineGray600,
      type: BottomBarEnum.Mdicontractoutlinegray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLaFileContractGray600,
      activeIcon: ImageConstant.imgLaFileContractGray600,
      type: BottomBarEnum.Lafilecontractgray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgOcticonGraph24Gray600,
      activeIcon: ImageConstant.imgOcticonGraph24Gray600,
      type: BottomBarEnum.Octicongraph24gray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconamoonProfileCircleGray600,
      activeIcon: ImageConstant.imgIconamoonProfileCircleGray600,
      type: BottomBarEnum.Iconamoonprofilecirclegray600,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 33.adaptSize,
              width: 33.adaptSize,
              color: appTheme.gray600,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 33.adaptSize,
              width: 33.adaptSize,
              color: theme.colorScheme.primary,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Lucidelayoutdashboardprimary,
  Mdicontractoutlinegray600,
  Lafilecontractgray600,
  Octicongraph24gray600,
  Iconamoonprofilecirclegray600,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
