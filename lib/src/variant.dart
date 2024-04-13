import 'style.dart';
import 'widget.dart';

/// Buttons allow users to take actions, and make choices, with a single tap
class WxDrivenButton extends WxButton {
  /// The style to be applied when no events occurs.
  final WxButtonStyle? enabledStyle;

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

  @override
  get style => WxDrivenButtonStyle.from(
        enabledStyle,
        selectedStyle: selectedStyle,
        focusedStyle: focusedStyle,
        hoveredStyle: hoveredStyle,
        pressedStyle: pressedStyle,
        disabledStyle: disabledStyle,
      );

  /// Create a variant button
  const WxDrivenButton({
    super.key,
    super.variant,
    super.severity,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    this.enabledStyle,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block variant button
  WxDrivenButton.block({
    super.key,
    super.variant,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    this.enabledStyle,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon variant button
  WxDrivenButton.icon({
    super.key,
    super.variant,
    super.severity,
    super.border,
    super.size,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    this.enabledStyle,
    this.selectedStyle,
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}

/// Text buttons are typically used for less-pronounced actions.
class WxTextButton extends WxDrivenButton {
  @override
  get variant => WxButtonVariant.text;

  /// Create a text button
  const WxTextButton({
    super.key,
    super.severity,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block text button
  WxTextButton.block({
    super.key,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon text button
  WxTextButton.icon({
    super.key,
    super.severity,
    super.border,
    super.size,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}

/// A tonal button is an alternative middle ground between filled and outlined buttons.
/// They’re useful in contexts where a lower-priority button requires slightly more emphasis
/// than an outline would give, such as "Next" in an onboarding flow.
/// Tonal buttons use the secondary color mapping.
class WxTonalButton extends WxDrivenButton {
  @override
  get variant => WxButtonVariant.tonal;

  /// Create a tonal button
  const WxTonalButton({
    super.key,
    super.severity,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block tonal button
  WxTonalButton.block({
    super.key,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon tonal button
  WxTonalButton.icon({
    super.key,
    super.severity,
    super.border,
    super.size,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}

/// Filled buttons are high-emphasis,
/// distinguished by their use of elevation and fill.
/// They contain actions that are primary to your app.
class WxFilledButton extends WxDrivenButton {
  @override
  get variant => WxButtonVariant.filled;

  /// Create a filled button
  const WxFilledButton({
    super.key,
    super.severity,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block filled button
  WxFilledButton.block({
    super.key,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon filled button
  WxFilledButton.icon({
    super.key,
    super.severity,
    super.border,
    super.size,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}

/// Elevated buttons are high-emphasis,
/// distinguished by their use of elevation and fill.
/// They contain actions that are primary to your app.
class WxElevatedButton extends WxDrivenButton {
  @override
  get variant => WxButtonVariant.elevated;

  /// Create an elevated button
  const WxElevatedButton({
    super.key,
    super.severity,
    super.loading = false,
    super.disabled = false,
    super.autofocus = false,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block elevated button
  WxElevatedButton.block({
    super.key,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon elevated button
  WxElevatedButton.icon({
    super.key,
    super.severity,
    super.border,
    super.size,
    super.loading = false,
    super.disabled = false,
    super.autofocus = false,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}

/// Outlined buttons are medium-emphasis buttons.
/// They contain actions that are important
/// but aren't the primary action in an app.
class WxOutlinedButton extends WxDrivenButton {
  @override
  get variant => WxButtonVariant.outlined;

  /// Create a outlined button
  const WxOutlinedButton({
    super.key,
    super.severity,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  });

  /// Create a block outlined button
  WxOutlinedButton.block({
    super.key,
    super.severity,
    super.alignChildren,
    super.justifyChildren,
    super.expanded,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.block();

  /// Create an icon outlined button
  WxOutlinedButton.icon({
    super.key,
    super.severity,
    super.border,
    super.size,
    super.loading,
    super.disabled,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.eventsController,
    super.curve,
    super.duration,
    super.enabledStyle,
    super.selectedStyle,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.disabledStyle,
    super.tooltip,
    super.leading,
    super.trailing,
    required super.child,
  }) : super.icon();
}
