import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleAlign extends StatelessWidget {
  const SampleAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Compound Alignment',
      source: 'sample_align.dart',
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
                child: const Text('Space Between (Default)'),
              ),
              WxButton.block(
                variant: WxButtonVariant.tonal,
                onPressed: () {},
                tileJustify: MainAxisAlignment.spaceAround,
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Space Around'),
              ),
              WxButton.block(
                variant: WxButtonVariant.elevated,
                onPressed: () {},
                tileJustify: MainAxisAlignment.spaceEvenly,
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Space Evenly'),
              ),
              WxButton.block(
                variant: WxButtonVariant.filled,
                onPressed: () {},
                tileJustify: MainAxisAlignment.center,
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Center'),
              ),
              WxButton.block(
                variant: WxButtonVariant.outlined,
                onPressed: () {},
                tileJustify: MainAxisAlignment.start,
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Start'),
              ),
              WxButton.block(
                variant: WxButtonVariant.outlined,
                onPressed: () {},
                tileJustify: MainAxisAlignment.end,
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('End'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
