import 'package:wx_sheet/wx_sheet.dart';

/// A class representing the different variants in a button can have.
class WxIconButtonVariant extends WxSheetVariant {
  /// Creates a new instance of `WxButtonVariant` with the provided value.
  const WxIconButtonVariant(super.value);

  /// A constant variant representing textual content.
  static const text = WxIconButtonVariant('text');

  /// A constant variant representing tonal variations.
  static const tonal = WxIconButtonVariant('tonal');

  /// A constant variant representing elevated content.
  static const elevated = WxIconButtonVariant('elevated');

  /// A constant variant representing filled content.
  static const filled = WxIconButtonVariant('filled');

  /// A constant variant representing outlined content.
  static const outlined = WxIconButtonVariant('outlined');
}

/// Represents the different sizes available
/// for a button in the widgetarian platform.
class WxIconButtonSize extends WxSheetSize {
  /// Creates a new `WxButtonSize` instance.
  const WxIconButtonSize(super.value);

  /// Represents the tiny button size.
  static const tiny = WxIconButtonSize('tiny');

  /// Represents the small button size.
  static const small = WxIconButtonSize('small');

  /// Represents the medium button size.
  static const medium = WxIconButtonSize('medium');

  /// Represents the large button size.
  static const large = WxIconButtonSize('large');

  /// Represents the huge button size.
  static const huge = WxIconButtonSize('huge');
}
