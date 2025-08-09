import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(alpha: .4),
    labelStyle: TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: TColors.white
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: TColors.darkerGrey,
      labelStyle: TextStyle(color: TColors.white),
      selectedColor: TColors.primary,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: TColors.white
  );

}