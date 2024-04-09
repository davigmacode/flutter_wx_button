import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'theme_data.dart';

/// A Widget that controls how descendant buttons should look like.
class ButtonTheme extends InheritedTheme {
  /// The properties for descendant [Button]s
  final WxButtonThemeData data;

  /// Creates a theme that controls
  /// how descendant buttons should look like.
  const ButtonTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// Creates an [ButtonTheme] that controls the style of
  /// descendant widgets, and merges in the current [ButtonTheme], if any.
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
        final parent = ButtonTheme.of(context);
        return ButtonTheme(
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

  /// The [ButtonTheme] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// ButtonThemeData theme = ButtonTheme.of(context);
  /// ```
  static WxButtonThemeData of(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<ButtonTheme>();
    if (parentTheme != null) return parentTheme.data;

    final globalTheme = Theme.of(context).extension<WxButtonThemeData>();
    final defaultTheme = WxButtonThemeData.defaults(context);
    return defaultTheme.merge(globalTheme);
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return ButtonTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(ButtonTheme oldWidget) {
    return oldWidget.data != data;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<WxButtonThemeData>('data', data));
  }
}
