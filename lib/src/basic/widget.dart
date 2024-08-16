import 'package:wx_sheet/wx_event.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'style.dart';
import 'style_driven.dart';

/// The `WxButton` widget serves as the building block for many Widgetarian components,
/// providing a base layer for customization with a button design.
///
/// It inherits all the functionalities from the base class `WxSheet` and adds properties
/// specifically for buttons, like leading and trailing spinners.
class WxButton extends WxSheet<WxButtonThemeData> {
  /// Whether to display a leading spinner before the button content.
  final bool? leadingSpinner;

  /// Whether to display a trailing spinner after the button content.
  final bool? trailingSpinner;

  /// Creates a button widget with various customization options.
  ///
  /// Inherits all the properties from the base class `WxSheet` and allows specifying
  /// additional properties for buttons like:
  ///  * `leadingSpinner`: Whether to display a leading spinner.
  ///  * `trailingSpinner`: Whether to display a trailing spinner.
  const WxButton({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.size,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
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
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
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
    super.border,
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
    super.titleStyle,
    super.subtitleStyle,
    super.titleSize,
    super.subtitleSize,
    super.titleColor,
    super.subtitleColor,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.titleWeight,
    super.subtitleWeight,
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
    this.leadingSpinner,
    this.trailingSpinner,
    super.title,
    super.subtitle,
    super.child,
  });

  /// Creates a block button widget with various customization options.
  ///
  /// Inherits all the properties from the base class `WxSheet` and allows specifying
  /// additional properties for buttons like:
  ///  * `leadingSpinner`: Whether to display a leading spinner.
  ///  * `trailingSpinner`: Whether to display a trailing spinner.
  const WxButton.block({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.size,
    super.severity,
    super.height,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
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
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
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
    super.border,
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
    super.titleStyle,
    super.subtitleStyle,
    super.titleSize,
    super.subtitleSize,
    super.titleColor,
    super.subtitleColor,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.titleWeight,
    super.subtitleWeight,
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
    this.leadingSpinner,
    this.trailingSpinner,
    super.title,
    super.subtitle,
    super.child,
  }) : super.block();

  @override
  WxButtonStyle get effectiveStyle {
    return const WxDrivenButtonStyle().merge(super.effectiveStyle);
  }

  @override
  WxButtonThemeData getTheme(context) {
    return WxButtonTheme.of(context);
  }

  @override
  WxButtonStyle getInheritedStyle(context, inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxDrivenButtonStyle()
          .merge(parentStyle)
          .merge(effectiveStyle);
    }
    return effectiveStyle;
  }

  /// Returns a `DrivenSpinner` if `leadingSpinner` is true,
  /// `DrivenChild.all(null)` if `leadingSpinner` is false,
  /// otherwise returns the default leading content.
  @override
  get leading => leadingSpinner == true
      ? const DrivenSpinner()
      : leadingSpinner == false
          ? const DrivenChild.all(null)
          : super.leading;

  /// Returns a `DrivenSpinner` if `trailingSpinner` is true,
  /// `DrivenChild.all(null)` if `trailingSpinner` is false,
  /// otherwise returns the default trailing content.
  @override
  get trailing => trailingSpinner == true
      ? const DrivenSpinner()
      : trailingSpinner == false
          ? const DrivenChild.all(null)
          : super.trailing;
}
