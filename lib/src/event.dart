import 'package:widget_event/widget_event.dart';

/// Interactive events that [Button] can take on
/// when receiving input from the user.
abstract class WxButtonEvent extends WidgetEvent {
  const WxButtonEvent(super.value);

  /// The event when this widget has been selected.
  static const selected = WidgetEvent.selected;

  /// The state when this item has been indeterminate.
  static const indeterminate = WidgetEvent.indeterminate;

  /// The state when this widget is disabled and cannot be interacted with.
  ///
  /// Disabled widgets should not respond to hover, focus, press, or drag
  /// interactions.
  static const disabled = WidgetEvent.disabled;

  /// The state when the user drags their mouse cursor over the given widget.
  static const hovered = WidgetEvent.hovered;

  /// The state when the user navigates with the keyboard to a given widget.
  ///
  /// This can also sometimes be triggered when a widget is tapped. For example,
  /// when a [TextField] is tapped, it becomes [focused].
  static const focused = WidgetEvent.focused;

  /// The state when the user is actively pressing down on the given widget.
  static const pressed = WidgetEvent.pressed;

  /// The state when the user is actively pressing down on the given widget.
  static const loading = WidgetEvent.loading;

  /// Checker for whether events considers [WxButtonEvent.disabled] to be active.
  static bool isDisabled(Set<WidgetEvent> events) {
    return events.contains(disabled);
  }

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

  /// Checker for whether events considers [WxButtonEvent.selected] to be active.
  static bool isSelected(Set<WidgetEvent> events) {
    return events.contains(selected);
  }

  /// Checker for whether events considers [WxButtonEvent.indeterminate] to be active.
  static bool isIndeterminate(Set<WidgetEvent> events) {
    return events.contains(indeterminate);
  }
}

/// Manages a set of [WxButtonEvent]s and notifies listeners of changes.
///
/// Used by widgets that expose their internal event
/// for the sake of extensions that add support for additional events.
///
/// The controller's value is its current set of events.
/// Listeners are notified whenever the value changes.
/// The value should only be changed with update;
/// it should not be modified directly.
typedef WxButtonEventController = WidgetEventController;

/// Set of WidgetEvent
typedef WxButtonEvents = WidgetEvents;
