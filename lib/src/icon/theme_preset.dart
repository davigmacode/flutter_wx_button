import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style_driven.dart';

abstract class WxIconButtonThemePreset extends WxIconButtonThemeData
    with WxSheetThemePreset<WxIconButtonThemeData> {
  @protected
  WxIconButtonThemePreset(
    this.context, {
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  WxDrivenIconButtonStyle get style =>
      const WxDrivenIconButtonStyle().merge(super.style);

  @override
  WxDrivenIconButtonStyle baseStyle(data) {
    return const WxDrivenIconButtonStyle(
      alignment: Alignment.center,
    );
  }
}

class WxIconButtonThemeAdaptive extends WxIconButtonThemePreset {
  WxIconButtonThemeAdaptive(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapAdaptive(context);
}

class WxIconButtonThemeM2 extends WxIconButtonThemePreset {
  WxIconButtonThemeM2(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM2(context);

  @override
  get style => super.style.copyWith(
        width: 36.0,
        height: 36.0,
        iconSize: 18.0,
      );
}

class WxIconButtonThemeM3 extends WxIconButtonThemePreset {
  WxIconButtonThemeM3(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapM3(context);

  @override
  get style => super.style.copyWith(
        width: 40.0,
        height: 40.0,
        iconSize: 18.0,
      );
}

class WxIconButtonThemeIOS extends WxIconButtonThemePreset {
  WxIconButtonThemeIOS(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeTapIOS(context);

  @override
  get style => super.style.copyWith(
        width: 44.0,
        height: 44.0,
        iconSize: 18.0,
      );
}
