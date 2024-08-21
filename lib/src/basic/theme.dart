import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxButtonTheme extends WxSheetTheme<WxButtonThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxButton]s should look like.
  const WxButtonTheme({
    super.key,
    required WxButtonThemeData super.data,
    required super.child,
  });

  /// Creates an [WxButtonTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxButtonTheme], if any.
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
    bool? leadingSpinner,
    bool? trailingSpinner,
    WxButtonThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxButtonTheme.of(context);
        return WxButtonTheme(
          key: key,
          data: parent.merge(data).copyWith(
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
                leadingSpinner: leadingSpinner,
                trailingSpinner: trailingSpinner,
              ),
          child: child,
        );
      },
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxButtonData theme = WxButtonTheme.of(context);
  /// ```
  static WxButtonThemeData? maybeOf(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxButtonTheme>();
    if (parentTheme != null) {
      return WxButtonThemeData.fromAncestor(parentTheme.data);
    }

    final globalTheme = Theme.of(context).extension<WxButtonThemeData>();
    return globalTheme;
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxButtonThemeData theme = WxButtonTheme.of(context);
  /// ```
  static WxButtonThemeData of(BuildContext context) {
    final parent = WxButtonTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxButtonThemeAdaptive(context);
  }
}
