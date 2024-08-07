import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleDisabled extends StatelessWidget {
  const SampleDisabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Disabled',
      child: Wrap(
        spacing: 10,
        children: [
          WxButton(
            variant: WxButtonVariant.text,
            onPressed: () {},
            disabled: true,
            child: const Text('Text'),
          ),
          WxButton(
            variant: WxButtonVariant.tonal,
            onPressed: () {},
            disabled: true,
            child: const Text('Tonal'),
          ),
          WxButton(
            variant: WxButtonVariant.elevated,
            onPressed: () {},
            disabled: true,
            child: const Text('Elevated'),
          ),
          WxButton(
            variant: WxButtonVariant.filled,
            onPressed: () {},
            disabled: true,
            child: const Text('Filled'),
          ),
          WxButton(
            variant: WxButtonVariant.outlined,
            onPressed: () {},
            disabled: true,
            child: const Text('Outlined'),
          ),
        ],
      ),
    );
  }
}
