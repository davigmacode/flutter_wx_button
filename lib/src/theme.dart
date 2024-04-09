import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';

/// A Widget that controls how descendant buttons should look like.
class WxButtonTheme extends InheritedTheme {
  /// The properties for descendant [WxButton]s
  final WxButtonThemeData data;

  /// Creates a theme that controls
  /// how descendant buttons should look like.
  const WxButtonTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Creates an [WxButtonTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxButtonTheme], if any.
  ///
  /// The [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxButtonStyle? style,
    WxButtonStyleByVariant? variantStyle,
    WxButtonStyleByVariant? dangerStyle,
    WxButtonStyleByVariant? warningStyle,
    WxButtonStyleByVariant? successStyle,
    WxButtonStyleByVariant? infoStyle,
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
                style: style,
                variantStyle: variantStyle,
                dangerStyle: dangerStyle,
                warningStyle: warningStyle,
                successStyle: successStyle,
                infoStyle: infoStyle,
              ),
          child: child,
        );
      },
    );
  }

  /// The [WxButtonTheme] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxButtonThemeData theme = WxButtonTheme.of(context);
  /// ```
  static WxButtonThemeData of(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxButtonTheme>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<WxButtonThemeData>();
    final defaultTheme = WxButtonThemeData.defaults(context);
    return defaultTheme.merge(globalTheme);
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WxButtonTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WxButtonTheme oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxButtonThemeData>('data', data));
  }
}
