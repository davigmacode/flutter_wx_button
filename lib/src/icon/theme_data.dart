import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxIconButtonThemeData extends WxSheetThemeData<WxIconButtonThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxIconButtonThemeData({
    super.curve,
    super.duration,
    WxIconButtonStyle super.style = const WxIconButtonStyle(),
    WxSheetStyleResolver<WxIconButtonStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
  }) : super(animated: true);

  WxIconButtonThemeData.from([
    super.other,
    super.fallback = const WxIconButtonThemeData(),
  ]) : super.from();

  @override
  WxIconButtonThemeData copyWith({
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
    );
    return WxIconButtonThemeData.from(ancestor);
  }

  @override
  WxIconButtonThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxIconButtonThemeData.from(ancestor);
  }
}
