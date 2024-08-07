import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxIconButtonTheme extends WxSheetTheme<WxIconButtonThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxIconButtonTheme({
    super.key,
    required super.data,
    required super.child,
  });

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxIconButtonStyle? style,
    WxSheetStyleResolver<WxIconButtonStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    WxIconButtonThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxIconButtonThemeData>(
      key: key,
      data: data,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      mouseCursor: mouseCursor,
      child: child,
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxIconButtonThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxIconButtonThemeData>(context);
    return WxIconButtonThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxIconButtonThemeData of(BuildContext context) {
    final parent = WxIconButtonTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxIconButtonThemeAdaptive(context);
  }
}
