import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleAppearance extends StatelessWidget {
  const SampleAppearance({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Appearance',
      source: 'sample_appearance.dart',
      maxWidth: 450,
      child: Center(
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            WxButton(
              variant: WxButtonVariant.text,
              onPressed: () {},
              child: const Text('Text'),
            ),
            WxButton(
              variant: WxButtonVariant.tonal,
              onPressed: () {},
              child: const Text('Tonal'),
            ),
            WxButton(
              variant: WxButtonVariant.elevated,
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            WxButton(
              variant: WxButtonVariant.filled,
              onPressed: () {},
              child: const Text('Filled'),
            ),
            WxButton(
              variant: WxButtonVariant.outlined,
              onPressed: () {},
              child: const Text('Outlined'),
            ),
          ],
        ),
      ),
    );
  }
}
