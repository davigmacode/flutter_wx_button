[![Pub Version](https://img.shields.io/pub/v/wx_button)](https://pub.dev/packages/wx_button) ![GitHub](https://img.shields.io/github/license/davigmacode/flutter_wx_button) [![GitHub](https://badgen.net/badge/icon/buymeacoffee?icon=buymeacoffee&color=yellow&label)](https://www.buymeacoffee.com/davigmacode) [![GitHub](https://badgen.net/badge/icon/ko-fi?icon=kofi&color=red&label)](https://ko-fi.com/davigmacode)

Revamp the Flutter Button to empower developers with more intuitive and streamlined styling and theming capabilities. This will eliminate platform-specific limitations, allowing for a truly cross-platform design experience. By decoupling the button's appearance from the underlying platform, developers gain greater control over the button's look and feel, making it easier to tailor it to their specific design requirements and brand identity.

[![Preview](https://github.com/davigmacode/flutter_wx_button/raw/main/media/preview.gif)](https://davigmacode.github.io/flutter_wx_button)

[Demo](https://davigmacode.github.io/flutter_wx_button)

## Usage

To read more about classes and other references used by `wx_button`, see the [API Reference](https://pub.dev/documentation/wx_button/latest/).

### Basic Usage:

The `WxButton` class provides various button types:
* `WxTextButton`: A flat button with text label.
* `WxTonalButton`: A button with a colored background and text label.
* `WxElevatedButton`: A raised button with a shadow effect.
* `WxFilledButton`: A button with filled background and text label.
* `WxOutlinedButton`: A button with an outlined border and text label.

Each button type requires an `onPressed` callback function to handle button press events. You can also provide a text child using the `child` property.

```dart
WxTextButton(
  onPressed: () {},
  child: const Text('Text Button'),
),
WxTonalButton(
  onPressed: () {},
  child: const Text('Tonal Button'),
),
// ... and so on for other button types
```

## Sponsoring

<a href="https://www.buymeacoffee.com/davigmacode" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="45"></a>
<a href="https://ko-fi.com/davigmacode" target="_blank"><img src="https://storage.ko-fi.com/cdn/brandasset/kofi_s_tag_white.png" alt="Ko-Fi" height="45"></a>

If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.