import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleBlock extends StatelessWidget {
  const SampleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Full Width Button',
      source: 'sample_block.dart',
      width: 300,
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              WxButton.block(
                variant: WxButtonVariant.text,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Text Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.tonal,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Tonal Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.elevated,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Elevated Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.filled,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Filled Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.outlined,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Outlined Block'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
