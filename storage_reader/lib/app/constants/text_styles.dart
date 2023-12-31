import "package:flutter/material.dart";
import 'package:storage_reader/app/constants/colors.dart';

abstract class TextStyles {
  //Bold
  static TextStyle titleTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 30,
    
  );
  //Semi Bold
  static TextStyle semiTitleTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleDividerTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  //Medium
  static TextStyle mediumTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  //Regular
  static TextStyle regularTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 20,
  );
  static TextStyle bodyTitleTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
  );
  //Light
  static TextStyle lightTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 19,
    fontWeight: FontWeight.w300,
  );
  static TextStyle smallLightTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static TextStyle bodyTextStyle = const TextStyle(
    color: AppColors.textColor,
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );
}
