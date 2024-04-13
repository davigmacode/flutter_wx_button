import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wx_utils/wx_utils.dart';
import 'style.dart';
import 'theme_preset.dart';

/// Defines the visual properties of [WxButton].
///
/// Descendant widgets obtain the current [WxButtonThemeData] object using
/// `ButtonTheme.of(context)`. Instances of [WxButtonThemeData]
/// can be customized with [WxButtonThemeData.copyWith] or [WxButtonThemeData.merge].
@immutable
class WxButtonThemeData extends ThemeExtension<WxButtonThemeData>
    with Diagnosticable {
  /// The curve to apply when animating the parameters of avatar widget.
  final Curve curve;

  /// The duration over which to animate the parameters of button widget.
  final Duration duration;

  /// The [WxButtonStyle] to be applied to the button widget
  final WxButtonStyle style;

  /// The [WxButtonStyle] to be applied to the variant sheet widget
  final WxButtonStyleByVariant variantStyle;

  /// The [WxButtonStyle] to be applied to the sheet widget with danger severity
  final WxButtonStyleByVariant dangerStyle;

  /// The [WxButtonStyle] to be applied to the sheet widget with warning severity
  final WxButtonStyleByVariant warningStyle;

  /// The [WxButtonStyle] to be applied to the sheet widget with success severity
  final WxButtonStyleByVariant successStyle;

  /// The [WxButtonStyle] to be applied to the sheet widget with info severity
  final WxButtonStyleByVariant infoStyle;

  /// The [WxButtonStyle] to be applied to the sheet widget with severity
  Map<WxButtonSeverity, WxButtonStyleByVariant> get severityStyle => {
        WxButtonSeverity.danger: dangerStyle,
        WxButtonSeverity.warning: warningStyle,
        WxButtonSeverity.success: successStyle,
        WxButtonSeverity.info: infoStyle,
      };

  /// Creates a theme data that can be used for [WxButtonTheme].
  const WxButtonThemeData({
    required this.curve,
    required this.duration,
    required this.style,
    this.variantStyle = const {},
    this.dangerStyle = const {},
    this.warningStyle = const {},
    this.successStyle = const {},
    this.infoStyle = const {},
  });

  /// Create a [WxButtonThemeData] with some reasonable default values.
  static const fallback = WxButtonThemeData(
    curve: Curves.linear,
    duration: Duration(milliseconds: 150),
    style: WxButtonStyle.defaults,
    variantStyle: {},
    dangerStyle: {},
    warningStyle: {},
    successStyle: {},
    infoStyle: {},
  );

  /// Creates a [WxButtonThemeData] from another one that probably null.
  WxButtonThemeData.from([WxButtonThemeData? other])
      : curve = other?.curve ?? fallback.curve,
        duration = other?.duration ?? fallback.duration,
        style = other?.style ?? fallback.style,
        variantStyle = other?.variantStyle ?? fallback.variantStyle,
        dangerStyle = other?.dangerStyle ?? fallback.dangerStyle,
        warningStyle = other?.warningStyle ?? fallback.warningStyle,
        successStyle = other?.successStyle ?? fallback.successStyle,
        infoStyle = other?.infoStyle ?? fallback.infoStyle;

  /// A [WxButtonThemeData] with default values.
  factory WxButtonThemeData.defaults(BuildContext context) =>
      WxButtonThemeDefaults(context);

  /// A [WxButtonThemeData] with material 2 default values.
  factory WxButtonThemeData.m2(BuildContext context) =>
      WxButtonThemeM2(context);

  /// A [WxButtonThemeData] with material 3 default values.
  factory WxButtonThemeData.m3(BuildContext context) =>
      WxButtonThemeM3(context);

  /// A [WxButtonThemeData] with ios default values.
  factory WxButtonThemeData.ios(BuildContext context) =>
      WxButtonThemeIos(context);

  /// Return [WxButtonStyle] that depends on [variant] and [severity]
  WxButtonStyle resolve({
    WxButtonVariant? variant,
    WxButtonSeverity? severity,
  }) {
    variant ??= style.variant;
    severity ??= style.severity;
    return const WxButtonStyle()
        .merge(style)
        .merge(variantStyle[variant])
        .merge(severityStyle[severity]?[variant]);
  }

  /// Creates a copy of this [WxButtonThemeData] but with
  /// the given fields replaced with the new values.
  @override
  WxButtonThemeData copyWith({
    Curve? curve,
    Duration? duration,
    WxButtonStyle? style,
    WxButtonStyleByVariant? variantStyle,
    WxButtonStyleByVariant? dangerStyle,
    WxButtonStyleByVariant? warningStyle,
    WxButtonStyleByVariant? successStyle,
    WxButtonStyleByVariant? infoStyle,
  }) {
    return WxButtonThemeData(
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
      style: this.style.merge(style),
      variantStyle: this.variantStyle.merge(variantStyle),
      dangerStyle: this.dangerStyle.merge(dangerStyle),
      warningStyle: this.warningStyle.merge(warningStyle),
      successStyle: this.successStyle.merge(successStyle),
      infoStyle: this.infoStyle.merge(infoStyle),
    );
  }

  /// Creates a copy of this [WxButtonThemeData] but with
  /// the given fields replaced with the new values.
  WxButtonThemeData merge(WxButtonThemeData? other) {
    // if null return current object
    if (other == null) return this;

    return copyWith(
      curve: other.curve,
      duration: other.duration,
      style: other.style,
      variantStyle: other.variantStyle,
      dangerStyle: other.dangerStyle,
      warningStyle: other.warningStyle,
      successStyle: other.successStyle,
      infoStyle: other.infoStyle,
    );
  }

  @override
  WxButtonThemeData lerp(ThemeExtension<WxButtonThemeData>? other, double t) {
    if (other is! WxButtonThemeData) return this;
    return WxButtonThemeData(
      curve: lerpEnum(curve, other.curve, t) ?? curve,
      duration: lerpEnum(duration, other.duration, t) ?? duration,
      style: WxButtonStyle.lerp(style, other.style, t) ?? style,
      variantStyle: variantStyle.lerp(other.variantStyle, t),
      dangerStyle: dangerStyle.lerp(other.dangerStyle, t),
      warningStyle: warningStyle.lerp(other.warningStyle, t),
      successStyle: successStyle.lerp(other.successStyle, t),
      infoStyle: infoStyle.lerp(other.infoStyle, t),
    );
  }

  Map<String, dynamic> toMap() => {
        'curve': curve,
        'duration': duration,
        'style': style,
        'variantStyle': variantStyle,
        'dangerStyle': dangerStyle,
        'warningStyle': warningStyle,
        'successStyle': successStyle,
        'infoStyle': infoStyle,
      };

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is WxButtonThemeData && mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => Object.hashAll(toMap().values);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    toMap().entries.forEach((el) {
      properties.add(DiagnosticsProperty(el.key, el.value, defaultValue: null));
    });
  }
}
