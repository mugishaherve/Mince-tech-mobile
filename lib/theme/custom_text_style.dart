import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLarge17_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray90017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 17.fSize,
      );
  static get bodyLargeGray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnErrorContainer17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargeOnErrorContainer19 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 19.fSize,
      );
  static get bodyLargeOnErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary18_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary19 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
      );
  static get bodyLargeff232266 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF232266),
        fontSize: 18.fSize,
      );
  static get bodyLargeff23226617 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF232266),
        fontSize: 17.fSize,
      );
  static get bodyLargeff6b6b6b => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF6B6B6B),
        fontSize: 17.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray60014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumff6b6b6b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6B6B6B),
      );
  // Headline text style
  static get headlineMediumOnErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineMediumffffffff => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Label text style
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelSmallGray600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get labelSmallGray600_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray600,
      );
  // Title text style
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff232266 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF232266),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff6b6b6b => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF6B6B6B),
        fontWeight: FontWeight.w400,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray600 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
