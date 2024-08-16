import 'package:wx_sheet/wx_event.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxButtonThemeData extends WxSheetThemeData<WxButtonThemeData> {
  /// Whether to display a leading spinner before the button content.
  final bool leadingSpinner;

  /// Whether to display a trailing spinner after the button content.
  final bool trailingSpinner;

  @override
  get leading => leadingSpinner ? const DrivenSpinner() : super.leading;

  @override
  get trailing => trailingSpinner ? const DrivenSpinner() : super.trailing;

  /// Creates a theme data that can be used for [SheetTheme].
  const WxButtonThemeData({
    super.curve,
    super.duration,
    super.variant,
    super.size,
    super.severity,
    WxButtonStyle super.style = const WxButtonStyle(),
    WxSheetStyleResolver<WxButtonStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
    super.leading,
    super.trailing,
    this.leadingSpinner = false,
    this.trailingSpinner = false,
  }) : super(animated: true);

  WxButtonThemeData.from([
    WxButtonThemeData? super.other,
    WxButtonThemeData super.fallback = const WxButtonThemeData(),
  ])  : leadingSpinner = other?.leadingSpinner ?? fallback.leadingSpinner,
        trailingSpinner = other?.trailingSpinner ?? fallback.trailingSpinner,
        super.from();

  WxButtonThemeData.fromAncestor(
    WxSheetThemeData<WxButtonThemeData>? other, {
    WxButtonThemeData fallback = const WxButtonThemeData(),
    bool? leadingSpinner,
    bool? trailingSpinner,
  })  : leadingSpinner = leadingSpinner ?? fallback.leadingSpinner,
        trailingSpinner = trailingSpinner ?? fallback.trailingSpinner,
        super.from(other, fallback);

  @override
  WxButtonThemeData copyWith({
    animated,
    curve,
    duration,
    variant,
    size,
    severity,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
    leading,
    trailing,
    bool? leadingSpinner,
    bool? trailingSpinner,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      variant: variant,
      size: size,
      severity: severity,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      inherits: inherits,
      mouseCursor: mouseCursor,
      leading: leading,
      trailing: trailing,
    );
    return WxButtonThemeData.fromAncestor(
      ancestor,
      leadingSpinner: leadingSpinner,
      trailingSpinner: trailingSpinner,
    );
  }

  @override
  WxButtonThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxButtonThemeData.fromAncestor(ancestor);
  }
}
