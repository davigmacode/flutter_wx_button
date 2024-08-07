import 'package:wx_sheet/wx_event.dart';
import 'package:wx_sheet/wx_sheet.dart';

/// Interactive events that [Button] can take on
/// when receiving input from the user.
class WxIconButtonEvent extends WxSheetEvent {
  const WxIconButtonEvent(super.value);

  /// The state when the user drags their mouse cursor over the given widget.
  static const hovered = WxIconButtonEvent('hovered');

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  static const focused = WxIconButtonEvent('focused');

  /// The state when the user is actively pressing down on the given widget.
  static const pressed = WxIconButtonEvent('pressed');

  /// The state when the user is actively pressing down on the given widget.
  static const loading = WxIconButtonEvent('loading');

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  static const disabled = WxIconButtonEvent('disabled');

  /// Checker for whether events considers [WxIconButtonEvent.hovered] to be active.
  static bool isHovered(Set<WidgetEvent> events) {
    return events.contains(hovered);
  }

  /// Checker for whether events considers [WxIconButtonEvent.focused] to be active.
  static bool isFocused(Set<WidgetEvent> events) {
    return events.contains(focused);
  }

  /// Checker for whether events considers [WxIconButtonEvent.pressed] to be active.
  static bool isPressed(Set<WidgetEvent> events) {
    return events.contains(pressed);
  }

  /// Checker for whether events considers [WxIconButtonEvent.loading] to be active.
  static bool isLoading(Set<WidgetEvent> events) {
    return events.contains(loading);
  }

  /// Checker for whether events considers [WxIconButtonEvent.disabled] to be active.
  static bool isDisabled(Set<WidgetEvent> events) {
    return events.contains(disabled);
  }
}
