import 'package:flutter/widgets.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  static const _primaryF6 = AppColors.whiteF6;

  static const s24cF6 = TextStyle(fontSize: 24, color: _primaryF6);
  static const s16cF6w500Italic = TextStyle(fontSize: 16, color: _primaryF6, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic);
  static const s16cF6w500 = TextStyle(fontSize: 16, color: _primaryF6, fontWeight: FontWeight.w500);
  static const s16cF6 = TextStyle(fontSize: 16, color: _primaryF6);
  static const s14cF6w500 = TextStyle(fontSize: 14, color: _primaryF6, fontWeight: FontWeight.w500);
  static const s14cF6w300 = TextStyle(fontSize: 14, color: _primaryF6, fontWeight: FontWeight.w300);
  static const s14cBCw300 = TextStyle(fontSize: 14, color: AppColors.greyBC, fontWeight: FontWeight.w300);
  static const s14c8Dw300 = TextStyle(fontSize: 14, color: AppColors.grey8D, fontWeight: FontWeight.w300);
  static const s13cF6w300Italic = TextStyle(fontSize: 13, color: _primaryF6, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic);
  static const s12cF6w300 = TextStyle(fontSize: 12, color: _primaryF6, fontWeight: FontWeight.w300);
  static const s12c8Dw300 = TextStyle(fontSize: 12, color: AppColors.grey8D, fontWeight: FontWeight.w300);
}
