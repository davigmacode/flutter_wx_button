import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style_driven.dart';

abstract class WxButtonThemePreset extends WxButtonThemeData
    with WxSheetThemePreset<WxButtonThemeData> {
  @protected
  WxButtonThemePreset(
    this.context, {
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  WxDrivenButtonStyle get style =>
      const WxDrivenButtonStyle().merge(super.style).copyWith(
            direction: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            spinnerSize: 16,
            spinnerWidth: 2,
          );
}

class WxButtonThemeAdaptive extends WxButtonThemePreset {
  WxButtonThemeAdaptive(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapAdaptive(context);
}

class WxButtonThemeM2 extends WxButtonThemePreset {
  WxButtonThemeM2(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM2(context);

  @override
  get style => super.style.copyWith(
        minHeight: 36.0,
        iconSize: 18.0,
        spacing: 8.0,
      );
}

class WxButtonThemeM3 extends WxButtonThemePreset {
  WxButtonThemeM3(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM3(context);

  @override
  get style => super.style.copyWith(
        minHeight: 40.0,
        iconSize: 18.0,
        spacing: 8.0,
      );
}

class WxButtonThemeIOS extends WxButtonThemePreset {
  WxButtonThemeIOS(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapIOS(context);

  @override
  get style => super.style.copyWith(
        minHeight: 44.0,
        iconSize: 18.0,
        spacing: 8.0,
      );
}
