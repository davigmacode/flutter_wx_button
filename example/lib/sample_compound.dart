import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleCompound extends StatelessWidget {
  const SampleCompound({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Compound Button',
      source: 'sample_compound.dart',
      maxWidth: 400,
      child: Column(
        children: [
          WxButton(
            variant: WxButtonVariant.outlined,
            onPressed: () {},
            leading: const Icon(Icons.calendar_month),
            child: const Text('With Leading'),
          ),
          const SizedBox(height: 15),
          WxButton(
            variant: WxButtonVariant.tonal,
            onPressed: () {},
            trailing: const Icon(Icons.close),
            child: const Text('With Trailing'),
          ),
          const SizedBox(height: 15),
          WxButton(
            variant: WxButtonVariant.filled,
            onPressed: () {},
            leading: const Icon(Icons.calendar_month),
            trailing: const Icon(Icons.close),
            child: const Text('With Leading and Trailing'),
          ),
          const SizedBox(height: 15),
          WxButton(
            variant: WxButtonVariant.elevated,
            onPressed: () {},
            leading: const Icon(Icons.calendar_month),
            trailing: const Icon(Icons.close),
            title: const Text('With Title'),
            subtitle: const Text('and subtitle'),
            spacing: 15,
            textAlign: TextAlign.left,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
          ),
        ],
      ),
    );
  }
}
