import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxButtonTheme extends WxSheetTheme<WxButtonThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxButtonTheme({
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
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    WxButtonStyle? style,
    WxSheetStyleResolver? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
    WxButtonThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxButtonThemeData>(
      key: key,
      data: data,
      curve: curve,
      duration: duration,
      variant: variant,
      size: size,
      severity: severity,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      mouseCursor: mouseCursor,
      leading: leading,
      trailing: trailing,
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
  static WxButtonThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxButtonThemeData>(context);
    return WxButtonThemeData.fromAncestor(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxButtonThemeData of(BuildContext context) {
    final parent = WxButtonTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxButtonThemeAdaptive(context);
  }
}
