import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';

class SampleGradient extends StatelessWidget {
  const SampleGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Gradient Button',
      source: 'sample_gradient.dart',
      width: 300,
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              WxButton.block(
                variant: WxButtonVariant.gradient,
                severity: Colors.red,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Text Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.gradient,
                severity: Colors.yellow,
                foregroundColor: Colors.black,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Tonal Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.gradient,
                severity: Colors.green,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Elevated Block'),
              ),
              WxButton.block(
                variant: WxButtonVariant.gradient,
                severity: Colors.blue,
                onPressed: () {},
                leading: const Icon(Icons.calendar_month),
                trailing: const Icon(Icons.close),
                child: const Text('Filled Block'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
