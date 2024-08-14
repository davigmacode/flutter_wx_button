import 'package:wx_sheet/wx_sheet.dart';

/// A class representing the different variants in a button can have.
class WxButtonVariant extends WxSheetVariant {
  /// Creates a new instance of `WxButtonVariant` with the provided value.
  const WxButtonVariant(super.value);

  /// A constant variant representing textual variant.
  static const text = WxButtonVariant('text');

  /// A constant variant representing tonal variation.
  static const tonal = WxButtonVariant('tonal');

  /// A constant variant representing elevated variant.
  static const elevated = WxButtonVariant('elevated');

  /// A constant variant representing filled variant.
  static const filled = WxButtonVariant('filled');

  /// A constant variant representing outlined variant.
  static const outlined = WxButtonVariant('outlined');

  /// A constant variant representing outlined variant.
  static const gradient = WxButtonVariant('gradient');

  /// A constant variant representing undefined variant.
  static const undefined = WxButtonVariant('undefined');
}

/// Represents the different sizes available
/// for a button in the widgetarian platform.
class WxButtonSize extends WxSheetSize {
  /// Creates a new `WxButtonSize` instance.
  const WxButtonSize(super.value);

  /// Represents the tiny button size.
  static const tiny = WxButtonSize('tiny');

  /// Represents the small button size.
  static const small = WxButtonSize('small');

  /// Represents the medium button size.
  static const medium = WxButtonSize('medium');

  /// Represents the large button size.
  static const large = WxButtonSize('large');

  /// Represents the huge button size.
  static const huge = WxButtonSize('huge');

  /// Represents the huge button size.
  static const undefined = WxButtonSize('undefined');
}
