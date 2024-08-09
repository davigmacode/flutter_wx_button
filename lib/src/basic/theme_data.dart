import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxButtonThemeData extends WxSheetThemeData<WxButtonThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxButtonThemeData({
    super.curve,
    super.duration,
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
  }) : super(animated: true);

  WxButtonThemeData.from([
    super.other,
    super.fallback = const WxButtonThemeData(),
  ]) : super.from();

  @override
  WxButtonThemeData copyWith({
    animated,
    curve,
    duration,
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
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
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
    return WxButtonThemeData.from(ancestor);
  }

  @override
  WxButtonThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxButtonThemeData.from(ancestor);
  }
}
