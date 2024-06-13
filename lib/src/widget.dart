import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'theme.dart';
import 'event.dart';
import 'render.dart';

/// Buttons allow users to take actions, and make choices, with a single tap
class WxButton extends StatelessWidget {
  /// Create a button
  const WxButton({
    super.key,
    this.loading = false,
    this.disabled = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.curve,
    this.duration,
    this.style,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    this.variant,
    this.severity,
    this.tooltip,
    this.leading,
    this.trailing,
    required this.child,
  }) : additionalStyle = null;

  /// Create a block button
  WxButton.block({
    super.key,
    CrossAxisAlignment? alignChildren,
    MainAxisAlignment? justifyChildren,
    bool? expanded,
    this.loading = false,
    this.disabled = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.curve,
    this.duration,
    this.variant,
    this.severity,
    this.style,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    this.tooltip,
    this.leading,
    this.trailing,
    required this.child,
  }) : additionalStyle = const WxButtonStyle().block(
          alignChildren: alignChildren,
          justifyChildren: justifyChildren,
          expanded: expanded,
        );

  /// Create an icon button
  WxButton.icon({
    super.key,
    OutlinedBorder? border,
    double? size,
    this.loading = false,
    this.disabled = false,
    this.autofocus = false,
    this.focusNode,
    this.onPressed,
    this.eventsController,
    this.curve,
    this.duration,
    this.variant,
    this.severity,
    this.style,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    this.tooltip,
    this.leading,
    this.trailing,
    required this.child,
  }) : additionalStyle = const WxButtonStyle().icon(
          border: border,
          size: size,
        );

  /// {@macro widgetarian.button.child}
  final Widget child;

  /// {@macro widgetarian.button.leading}
  final Widget? leading;

  /// {@macro widgetarian.button.trailing}
  final Widget? trailing;

  /// {@macro widgetarian.button.tooltip}
  final String? tooltip;

  /// {@macro widgetarian.button.variant}
  final WxButtonVariant? variant;

  /// {@macro widgetarian.button.severity}
  final WxButtonSeverity? severity;

  /// {@macro widgetarian.button.loading}
  final bool loading;

  /// {@macro widgetarian.button.disabled}
  final bool disabled;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro widgetarian.button.onPressed}
  final VoidCallback? onPressed;

  /// {@macro widgetarian.button.style}
  final WxButtonStyle? style;

  /// The style to be applied when events includes [WidgetEvent.selected].
  final WxButtonStyle? selectedStyle;

  /// The style to be applied when events includes [WidgetEvent.focused].
  final WxButtonStyle? focusedStyle;

  /// The style to be applied when events includes [WidgetEvent.hovered].
  final WxButtonStyle? hoveredStyle;

  /// The style to be applied when events includes [WidgetEvent.pressed].
  final WxButtonStyle? pressedStyle;

  /// The style to be applied when events includes [WidgetEvent.disabled].
  final WxButtonStyle? disabledStyle;

  /// {@macro widgetarian.button.eventsController}
  final WxButtonEventController? eventsController;

  /// {@macro widgetarian.button.curve}
  final Curve? curve;

  /// {@macro widgetarian.button.duration}
  final Duration? duration;

  /// Additional style to be merge with [style]
  final WxButtonStyle? additionalStyle;

  /// The [style] merged with [additionalStyle]
  get effectiveStyle => WxDrivenButtonStyle.from(
        style,
        selectedStyle: selectedStyle,
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        disabledStyle: disabledStyle,
      ).merge(additionalStyle);

  @override
  Widget build(BuildContext context) {
    return WxButtonRender(
      curve: curve,
      duration: duration,
      theme: WxButtonTheme.of(context),
      style: effectiveStyle,
      variant: variant,
      severity: severity,
      loading: loading,
      disabled: disabled,
      autofocus: autofocus,
      focusNode: focusNode,
      onPressed: onPressed,
      eventsController: eventsController,
      leading: leading,
      trailing: trailing,
      tooltip: tooltip,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('loading', loading));
    properties.add(DiagnosticsProperty<bool>('disabled', disabled));
    properties.add(DiagnosticsProperty<bool>('autofocus', autofocus));
    properties.add(
        DiagnosticsProperty<WxButtonStyle?>('effectiveStyle', effectiveStyle));
  }
}
