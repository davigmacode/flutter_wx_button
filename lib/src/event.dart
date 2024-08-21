import 'package:wx_sheet/wx_event.dart';
import 'package:wx_sheet/wx_sheet.dart';

/// Interactive events that [Button] can take on
/// when receiving input from the user.
class WxButtonEvent extends WxSheetEvent {
  const WxButtonEvent(super.value);

  /// The state when the user drags their mouse cursor over the given widget.
  static const hovered = WxButtonEvent('hovered');

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  static const focused = WxButtonEvent('focused');

  /// The state when the user is actively pressing down on the given widget.
  static const pressed = WxButtonEvent('pressed');

  /// The state when the user is actively pressing down on the given widget.
  static const loading = WxButtonEvent('loading');

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  static const disabled = WxButtonEvent('disabled');

  /// Checker for whether events considers [WxButtonEvent.hovered] to be active.
  static bool isHovered(Set<WidgetEvent> events) {
    return events.contains(hovered);
  }

  /// Checker for whether events considers [WxButtonEvent.focused] to be active.
  static bool isFocused(Set<WidgetEvent> events) {
    return events.contains(focused);
  }

  /// Checker for whether events considers [WxButtonEvent.pressed] to be active.
  static bool isPressed(Set<WidgetEvent> events) {
    return events.contains(pressed);
  }

  /// Checker for whether events considers [WxButtonEvent.loading] to be active.
  static bool isLoading(Set<WidgetEvent> events) {
    return events.contains(loading);
  }

  /// Checker for whether events considers [WxButtonEvent.disabled] to be active.
  static bool isDisabled(Set<WidgetEvent> events) {
    return events.contains(disabled);
  }
}
