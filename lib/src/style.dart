import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_event/widget_event.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'event.dart';

typedef WxButtonVariant = WxSheetVariant;
typedef WxButtonSeverity = WxSheetSeverity;

/// Map of [WxButtonStyle] by [WxButtonVariant] as key
typedef WxButtonStyleByVariant = Map<WxButtonVariant, WxButtonStyle?>;

extension WxButtonStyleByVariantUtils on WxButtonStyleByVariant {
  /// Creates a copy of this [WxButtonStyleByVariant] but with
  /// the given fields replaced with the new values.
  WxButtonStyleByVariant merge(WxButtonStyleByVariant? variants) {
    final entries = WxButtonVariant.values.map((key) {
      final other = variants?[key];
      final style = this[key]?.merge(other) ?? other;
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }

  /// Linearly interpolate with another [WxButtonStyleByVariant] object.
  WxButtonStyleByVariant lerp(WxButtonStyleByVariant? other, double t) {
    final entries = WxButtonVariant.values.map((key) {
      final style = WxButtonStyle.lerp(this[key], other?[key], t);
      return MapEntry(key, style);
    });
    return Map.fromEntries(entries);
  }
}

/// The style to be applied to button widget
@immutable
class WxButtonStyle extends WxSheetStyle {
  /// Create a raw button's style
  const WxButtonStyle({
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.elevationColor,
    super.surfaceTint,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.foregroundSpacing,
    super.foregroundLoosen,
    super.foregroundExpanded,
    super.foregroundAlign,
    super.foregroundJustify,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
  });

  /// Create a button's style from another style
  WxButtonStyle.from(WxButtonStyle? super.other) : super.from();

  /// Create a button's style from another style
  WxButtonStyle.fromAncestor(super.other) : super.from();

  /// An [WxButtonStyle] with some reasonable default values.
  static const defaults = WxButtonStyle(
    clipBehavior: Clip.antiAlias,
    foregroundJustify: MainAxisAlignment.center,
    foregroundAlign: CrossAxisAlignment.center,
    foregroundLoosen: true,
  );

  static const disabledForegroundAlpha = 0x61; // 38%
  static const disabledBackgroundAlpha = 0x0c; // 38% * 12% = 5%
  static const disabledBorderAlpha = 0x0c; // 38% * 12% = 5%

  /// Creates a copy of this [WxButtonStyle] but with
  /// [padding] is [EdgeInsets.zero] and squared size.
  WxButtonStyle icon({
    OutlinedBorder border = const CircleBorder(),
    double? size,
  }) {
    return copyWith(
      border: border,
      width: size ?? defaults.height,
      height: size ?? defaults.height,
      padding: EdgeInsets.zero,
    );
  }

  /// Creates a copy of this [WxButtonStyle] but with
  /// the [width] replaced with [double.infinity].
  WxButtonStyle block({
    bool? expanded,
    CrossAxisAlignment? alignChildren,
    MainAxisAlignment? justifyChildren,
  }) {
    return copyWith(
      width: double.infinity,
      foregroundExpanded: expanded,
      foregroundAlign: alignChildren,
      foregroundJustify: justifyChildren,
    );
  }

  /// Creates a copy of this [WxButtonStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxButtonStyle copyWith({
    WxButtonVariant? variant,
    WxButtonSeverity? severity,
    double? width,
    double? height,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    Color? elevationColor,
    Color? surfaceTint,
    double? elevation,
    TextStyle? foregroundStyle,
    Color? foregroundColor,
    double? foregroundOpacity,
    int? foregroundAlpha,
    double? foregroundSpacing,
    bool? foregroundLoosen,
    bool? foregroundExpanded,
    CrossAxisAlignment? foregroundAlign,
    MainAxisAlignment? foregroundJustify,
    Color? backgroundColor,
    double? backgroundOpacity,
    int? backgroundAlpha,
    Color? borderColor,
    double? borderOpacity,
    int? borderAlpha,
    double? borderWidth,
    BorderRadius? borderRadius,
    BorderStyle? borderStyle,
    double? borderOffset,
    OutlinedBorder? border,
    DecorationImage? image,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    Color? iconColor,
    double? iconOpacity,
    double? iconSize,
    bool? inherits,
    WxButtonStyle? selectedStyle,
    WxButtonStyle? disabledStyle,
    WxButtonStyle? hoveredStyle,
    WxButtonStyle? focusedStyle,
    WxButtonStyle? pressedStyle,
  }) {
    final style = WxButtonStyle(
      variant: variant ?? this.variant,
      severity: severity ?? this.severity,
      width: width ?? this.width,
      height: height ?? this.height,
      minWidth: minWidth ?? this.minWidth,
      maxWidth: maxWidth ?? this.maxWidth,
      minHeight: minHeight ?? this.minHeight,
      maxHeight: maxHeight ?? this.maxHeight,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      overlayDisabled: overlayDisabled ?? this.overlayDisabled,
      overlayColor: overlayColor ?? this.overlayColor,
      elevationColor: elevationColor ?? this.elevationColor,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      elevation: elevation ?? this.elevation,
      foregroundStyle: foregroundStyle ?? this.foregroundStyle,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      foregroundOpacity: foregroundOpacity ?? this.foregroundOpacity,
      foregroundAlpha: foregroundAlpha ?? this.foregroundAlpha,
      foregroundSpacing: foregroundSpacing ?? this.foregroundSpacing,
      foregroundLoosen: foregroundLoosen ?? this.foregroundLoosen,
      foregroundExpanded: foregroundExpanded ?? this.foregroundExpanded,
      foregroundAlign: foregroundAlign ?? this.foregroundAlign,
      foregroundJustify: foregroundJustify ?? this.foregroundJustify,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundOpacity: backgroundOpacity ?? this.backgroundOpacity,
      backgroundAlpha: backgroundAlpha ?? this.backgroundAlpha,
      borderColor: borderColor ?? this.borderColor,
      borderOpacity: borderOpacity ?? this.borderOpacity,
      borderAlpha: borderAlpha ?? this.borderAlpha,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      borderStyle: borderStyle ?? this.borderStyle,
      borderOffset: borderOffset ?? this.borderOffset,
      border: border ?? this.border,
      image: image ?? this.image,
      shadows: shadows ?? this.shadows,
      gradient: gradient ?? this.gradient,
      iconColor: iconColor ?? this.iconColor,
      iconOpacity: iconOpacity ?? this.iconOpacity,
      iconSize: iconSize ?? this.iconSize,
    );

    final hasDrivenStyle = [
      inherits,
      selectedStyle,
      focusedStyle,
      hoveredStyle,
      pressedStyle,
      disabledStyle,
    ].any((el) => el != null);

    if (hasDrivenStyle) {
      return WxDrivenButtonStyle.from(
        style,
        selectedStyle: selectedStyle,
        disabledStyle: disabledStyle,
        hoveredStyle: hoveredStyle,
        focusedStyle: focusedStyle,
        pressedStyle: pressedStyle,
        inherits: inherits,
      );
    }
    return style;
  }

  /// Creates a copy of this [WxButtonStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxButtonStyle merge(covariant WxButtonStyle? other) {
    // if null return current object
    if (other == null) return this;

    var style = copyWith(
      variant: other.variant,
      severity: other.severity,
      width: other.width,
      height: other.height,
      minWidth: other.minWidth,
      maxWidth: other.maxWidth,
      minHeight: other.minHeight,
      maxHeight: other.maxHeight,
      margin: other.margin,
      padding: other.padding,
      clipBehavior: other.clipBehavior,
      overlayDisabled: other.overlayDisabled,
      overlayColor: other.overlayColor,
      elevationColor: other.elevationColor,
      surfaceTint: other.surfaceTint,
      elevation: other.elevation,
      foregroundStyle: other.foregroundStyle,
      foregroundColor: other.foregroundColor,
      foregroundOpacity: other.foregroundOpacity,
      foregroundAlpha: other.foregroundAlpha,
      foregroundSpacing: other.foregroundSpacing,
      foregroundLoosen: other.foregroundLoosen,
      foregroundExpanded: other.foregroundExpanded,
      foregroundAlign: other.foregroundAlign,
      foregroundJustify: other.foregroundJustify,
      backgroundColor: other.backgroundColor,
      backgroundOpacity: other.backgroundOpacity,
      backgroundAlpha: other.backgroundAlpha,
      borderColor: other.borderColor,
      borderOpacity: other.borderOpacity,
      borderAlpha: other.borderAlpha,
      borderWidth: other.borderWidth,
      borderRadius: other.borderRadius,
      borderStyle: other.borderStyle,
      borderOffset: other.borderOffset,
      border: other.border,
      image: other.image,
      shadows: other.shadows,
      gradient: other.gradient,
      iconColor: other.iconColor,
      iconOpacity: other.iconOpacity,
      iconSize: other.iconSize,
    );

    if (other is WxDrivenButtonStyle) {
      style = style.copyWith(
        inherits: other.inherits,
        selectedStyle: other.selectedStyle,
        focusedStyle: other.focusedStyle,
        hoveredStyle: other.hoveredStyle,
        pressedStyle: other.pressedStyle,
        disabledStyle: other.disabledStyle,
      );
    }

    return style;
  }

  /// Linearly interpolate between two [WxButtonStyle] objects.
  static WxButtonStyle? lerp(WxButtonStyle? a, WxButtonStyle? b, double t) {
    if (a == null && b == null) return null;

    final sheetStyle = WxSheetStyle.lerp(a, b, t);
    return WxButtonStyle.fromAncestor(sheetStyle);
  }
}

/// Create a [WxButtonStyle] when some events occurs
class WxDrivenButtonStyle extends WxButtonStyle
    implements DrivenProperty<WxButtonStyle?> {
  /// Whether the resolved style is merged to
  /// the previous resolved style or not
  final bool? inherits;

  /// The style to be resolved when
  /// events includes [WxButtonEvent.selected].
  final WxButtonStyle? selectedStyle;

  /// The style to be resolved when
  /// events includes [WxButtonEvent.focused].
  final WxButtonStyle? focusedStyle;

  /// The style to be resolved when
  /// events includes [WxButtonEvent.hovered].
  final WxButtonStyle? hoveredStyle;

  /// The style to be resolved when
  /// events includes [WxButtonEvent.pressed].
  final WxButtonStyle? pressedStyle;

  /// The style to be resolved when
  /// events includes [WxButtonEvent.disabled].
  final WxButtonStyle? disabledStyle;

  /// Map of driven style, order matters
  Map<WidgetEvent, WxButtonStyle?> get driven => {
        WidgetEvent.selected: selectedStyle,
        WidgetEvent.focused: focusedStyle,
        WidgetEvent.hovered: hoveredStyle,
        WidgetEvent.pressed: pressedStyle,
        WidgetEvent.disabled: disabledStyle,
      };

  /// Create a raw [WxDrivenButtonStyle].
  const WxDrivenButtonStyle({
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.clipBehavior,
    super.overlayDisabled,
    super.overlayColor,
    super.elevationColor,
    super.surfaceTint,
    super.elevation,
    super.foregroundStyle,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.foregroundSpacing,
    super.foregroundLoosen,
    super.foregroundExpanded,
    super.foregroundAlign,
    super.foregroundJustify,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    this.selectedStyle,
    this.disabledStyle,
    this.hoveredStyle,
    this.focusedStyle,
    this.pressedStyle,
    this.inherits,
  });

  /// Create a [WxDrivenButtonStyle] with value
  /// from another [WxButtonStyle].
  WxDrivenButtonStyle.from(
    super.enabled, {
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    this.inherits,
  }) : super.from();

  /// Create a [WxDrivenButtonStyle] from a resolver callback
  WxDrivenButtonStyle.resolver(
    DrivenPropertyResolver<WxButtonStyle?> resolver, {
    this.inherits = false,
  })  : selectedStyle = resolver({WidgetEvent.selected}),
        focusedStyle = resolver({WidgetEvent.focused}),
        hoveredStyle = resolver({WidgetEvent.hovered}),
        pressedStyle = resolver({WidgetEvent.pressed}),
        disabledStyle = resolver({WidgetEvent.disabled}),
        super.from(resolver({}));

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxButtonStyle],
  /// otherwise returns the value itself.
  static WxButtonStyle? evaluate(
    WxButtonStyle? value,
    Set<WidgetEvent> events,
  ) =>
      DrivenProperty.evaluate<WxButtonStyle?>(value, events);

  @override
  WxButtonStyle resolve(Set<WidgetEvent> events) {
    WxButtonStyle style = this;
    for (var e in driven.entries) {
      if (events.contains(e.key)) {
        final evaluated = evaluate(e.value, events);
        style = inherits != false
            ? style.merge(evaluated)
            : WxButtonStyle.from(evaluated);
      }
    }
    return style;
  }

  /// Creates a copy of this [WxDrivenButtonStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxDrivenButtonStyle copyWith({
    WxButtonVariant? variant,
    WxButtonSeverity? severity,
    double? width,
    double? height,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    Clip? clipBehavior,
    bool? overlayDisabled,
    Color? overlayColor,
    Color? elevationColor,
    Color? surfaceTint,
    double? elevation,
    TextStyle? foregroundStyle,
    Color? foregroundColor,
    double? foregroundOpacity,
    int? foregroundAlpha,
    double? foregroundSpacing,
    bool? foregroundLoosen,
    bool? foregroundExpanded,
    CrossAxisAlignment? foregroundAlign,
    MainAxisAlignment? foregroundJustify,
    Color? backgroundColor,
    double? backgroundOpacity,
    int? backgroundAlpha,
    Color? borderColor,
    double? borderOpacity,
    int? borderAlpha,
    double? borderWidth,
    BorderRadius? borderRadius,
    BorderStyle? borderStyle,
    double? borderOffset,
    OutlinedBorder? border,
    DecorationImage? image,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    Color? iconColor,
    double? iconOpacity,
    double? iconSize,
    bool? inherits,
    WxButtonStyle? selectedStyle,
    WxButtonStyle? disabledStyle,
    WxButtonStyle? hoveredStyle,
    WxButtonStyle? focusedStyle,
    WxButtonStyle? pressedStyle,
  }) {
    final ancestor = super.copyWith(
      variant: variant,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      clipBehavior: clipBehavior,
      overlayDisabled: overlayDisabled,
      overlayColor: overlayColor,
      elevationColor: elevationColor,
      surfaceTint: surfaceTint,
      elevation: elevation,
      foregroundStyle: foregroundStyle,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      foregroundSpacing: foregroundSpacing,
      foregroundLoosen: foregroundLoosen,
      foregroundExpanded: foregroundExpanded,
      foregroundAlign: foregroundAlign,
      foregroundJustify: foregroundJustify,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      borderOffset: borderOffset,
      border: border,
      image: image,
      shadows: shadows,
      gradient: gradient,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
    );
    return WxDrivenButtonStyle.from(
      ancestor,
      inherits: inherits ?? this.inherits,
      selectedStyle: this.selectedStyle?.merge(selectedStyle) ?? selectedStyle,
      focusedStyle: this.focusedStyle?.merge(focusedStyle) ?? focusedStyle,
      hoveredStyle: this.hoveredStyle?.merge(hoveredStyle) ?? hoveredStyle,
      pressedStyle: this.pressedStyle?.merge(pressedStyle) ?? pressedStyle,
      disabledStyle: this.disabledStyle?.merge(disabledStyle) ?? disabledStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('inherits', inherits));
    properties.add(DiagnosticsProperty('selectedStyle', selectedStyle));
    properties.add(DiagnosticsProperty('focusedStyle', focusedStyle));
    properties.add(DiagnosticsProperty('hoveredStyle', hoveredStyle));
    properties.add(DiagnosticsProperty('pressedStyle', pressedStyle));
    properties.add(DiagnosticsProperty('disabledStyle', disabledStyle));
  }
}
