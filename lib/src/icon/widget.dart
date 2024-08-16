import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'style_driven.dart';
import 'style.dart';

/// The `WxIconButton` widget serves as a customizable button building block for
/// Widgetarian components. It provides a base layer for creating various button styles
/// through properties like color, size, and effects.
class WxIconButton extends WxSheet<WxIconButtonThemeData> {
  /// The `WxIconButton` widget serves as the building block for many Widgetarian components,
  /// providing a base layer for customization of icon buttons. It inherits from `WxSheet<WxIconButtonThemeData>`,
  /// which means it benefits from all the styling and behavior properties of a sheet widget,
  /// but specifically designed for icon buttons.
  const WxIconButton({
    super.key,
    super.radius,
    super.minRadius,
    super.maxRadius,
    super.duration,
    super.curve,
    super.variant,
    super.size,
    super.severity,
    super.margin,
    super.padding,
    super.offset,
    super.scale,
    super.rotate,
    super.flipX,
    super.flipY,
    super.opacity,
    super.alignment,
    super.clipBehavior,
    super.overlay,
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
    super.elevationColor,
    super.elevation,
    super.adaptiveForegroundColor,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
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
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.tooltip,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.child,
  }) : super.circle();

  @override
  WxIconButtonStyle get effectiveStyle {
    return const WxDrivenIconButtonStyle().merge(super.effectiveStyle);
  }

  @override
  WxIconButtonThemeData getTheme(context) {
    return WxIconButtonTheme.of(context);
  }

  @override
  WxIconButtonStyle getInheritedStyle(context, inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxDrivenIconButtonStyle()
          .merge(parentStyle)
          .merge(effectiveStyle);
    }
    return effectiveStyle;
  }
}
