import 'package:flutter/material.dart';
import 'package:flutter_app_theme/theme/app_color_theme.dart';
import 'package:flutter_app_theme/theme/app_gradient_theme.dart';
import 'package:flutter_app_theme/theme/app_shadow_theme.dart';
import 'package:flutter_app_theme/theme/app_text_theme.dart';

extension ThemeDataExtension on ThemeData {
  AppColorTheme get colorTheme => extension<AppColorTheme>() ?? AppColorTheme();

  AppShadowTheme get appShadowTheme => extension<AppShadowTheme>() ?? AppShadowTheme();

  AppGradientTheme get appGradientTheme =>
      extension<AppGradientTheme>() ?? AppGradientTheme.generate(colorScheme: colorScheme);

  AppTextTheme get appTextTheme => extension<AppTextTheme>() ?? AppTextTheme();
}

extension BuildContextExtension on BuildContext {
  AppColorTheme get colorTheme => Theme.of(this).colorTheme;

  AppShadowTheme get appShadowTheme => Theme.of(this).appShadowTheme;

  AppGradientTheme get appGradientTheme => Theme.of(this).appGradientTheme;

  AppTextTheme get appTextTheme => Theme.of(this).appTextTheme;
}
