import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';

/// The sheet widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization.
class WxIconButton extends WxSheet<WxIconButtonThemeData> {
  /// Create a button widget
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
    super.elevationColor,
    super.elevation,
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
    super.leading,
    super.trailing,
    super.title,
    super.subtitle,
    super.child,
  }) : super.circle();

  @override
  WxIconButtonThemeData getTheme(BuildContext context) {
    return WxIconButtonTheme.of(context);
  }
}
