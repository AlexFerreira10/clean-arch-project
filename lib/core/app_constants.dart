import 'package:clean_arch_project/core/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppConstants {
  static const spaceSmallest = 2.0;
  static const spaceSmall = 8.0;
  static const spaceMedium = 16.0;
  static const spaceLarge = 32.0;

  static const marginSmallest = EdgeInsets.all(spaceSmallest);
  static const marginSmall = EdgeInsets.all(spaceSmall);
  static const marginMedium = EdgeInsets.all(spaceMedium);
  static const marginLarge = EdgeInsets.all(spaceLarge);

  static const paddingSmallest = EdgeInsets.all(spaceSmallest);
  static const paddingSmall = EdgeInsets.all(spaceSmall);
  static const paddingMedium = EdgeInsets.all(spaceMedium);
  static const paddingLarge = EdgeInsets.all(spaceLarge);

  static const borderRadiusSmall = BorderRadius.all(Radius.circular(4.0));
  static const borderRadiusMedium = BorderRadius.all(Radius.circular(8.0));
  static const borderRadiusLarge = BorderRadius.all(Radius.circular(16.0));

  static const double fontSizeMin = 12.0;
  static const double fontSizeMax = 24.0;

  static const TextStyle light = TextStyle(
    color: Colors.white,
  );

  static const TextStyle lightBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle dark = TextStyle(
    color: AppColors.detailsDark,
  );

  static const TextStyle darkBold = TextStyle(
    color: AppColors.detailsDark,
    fontWeight: FontWeight.bold,
  );
}
