

import 'package:flutter/material.dart';
import 'package:whatsapp_project/shared/app_colors.dart';

abstract final class AppTextStyles {
 static TextStyle? bold22Text = TextStyle(
  color: AppColors.white,
  fontSize: 22,
  fontWeight: FontWeight.bold
 );
 static TextStyle? normal16Text = TextStyle(
     color: AppColors.white,
     fontSize: 16,
 );
 static TextStyle? normal14WhiteText = TextStyle(color: AppColors.white, fontSize: 14,);
 }
