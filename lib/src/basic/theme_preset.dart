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
      const WxDrivenButtonStyle().merge(super.style);

  @override
  WxDrivenButtonStyle baseStyle(data) {
    return WxDrivenButtonStyle(
      adaptiveSpacing: true,
      textStyle: textTheme.labelLarge,
      spinnerSize: 16,
      spinnerWidth: 2,
    );
  }
}

class WxButtonThemeAdaptive extends WxButtonThemePreset {
  WxButtonThemeAdaptive(
    super.context, {
    super.curve,
    super.duration,
  });

  @override
  get baseTheme {
    WxButtonThemePreset theme = WxButtonThemeM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxButtonThemeM3(context);
    } else if (isIOS) {
      theme = WxButtonThemeIOS(context);
    }
    return theme;
  }
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
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          padding: EdgeInsets.only(
            left: data.hasLeading ? 12 : 16,
            right: data.hasTrailing ? 12 : 16,
          ),
          minHeight: 36.0,
          iconSize: 18.0,
          spacing: 8.0,
        );
  }
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
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          padding: EdgeInsets.only(
            left: data.hasLeading ? 12 : 16,
            right: data.hasTrailing ? 12 : 16,
          ),
          minHeight: 40.0,
          iconSize: 18.0,
          spacing: 8.0,
        );
  }
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
  baseStyle(data) {
    return super.baseStyle(data).copyWith(
          padding: EdgeInsets.only(
            left: data.hasLeading ? 12 : 16,
            right: data.hasTrailing ? 12 : 16,
          ),
          minHeight: 44.0,
          iconSize: 18.0,
          spacing: 8.0,
        );
  }
}
