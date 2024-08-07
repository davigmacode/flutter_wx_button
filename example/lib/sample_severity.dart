import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleSeverity extends StatelessWidget {
  const SampleSeverity({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Color Severity',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            spacing: 10,
            children: [
              WxButton(
                variant: WxButtonVariant.text,
                severity: dangerColor,
                onPressed: () {},
                child: const Text('Text Danger'),
              ),
              WxButton(
                variant: WxButtonVariant.tonal,
                severity: dangerColor,
                onPressed: () {},
                child: const Text('Tonal Danger'),
              ),
              WxButton(
                variant: WxButtonVariant.elevated,
                severity: dangerColor,
                onPressed: () {},
                child: const Text('Elevated Danger'),
              ),
              WxButton(
                variant: WxButtonVariant.filled,
                severity: dangerColor,
                onPressed: () {},
                child: const Text('Filled Danger'),
              ),
              WxButton(
                variant: WxButtonVariant.outlined,
                severity: dangerColor,
                onPressed: () {},
                child: const Text('Outlined Danger'),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxButton(
                variant: WxButtonVariant.text,
                severity: warningColor,
                onPressed: () {},
                child: const Text('Text Warning'),
              ),
              WxButton(
                variant: WxButtonVariant.tonal,
                severity: warningColor,
                onPressed: () {},
                child: const Text('Tonal Warning'),
              ),
              WxButton(
                variant: WxButtonVariant.elevated,
                severity: warningColor,
                onPressed: () {},
                child: const Text('Elevated Warning'),
              ),
              WxButton(
                variant: WxButtonVariant.filled,
                severity: warningColor,
                onPressed: () {},
                child: const Text('Filled Warning'),
              ),
              WxButton(
                variant: WxButtonVariant.outlined,
                severity: warningColor,
                onPressed: () {},
                child: const Text('Outlined Warning'),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxButton(
                variant: WxButtonVariant.text,
                severity: successColor,
                onPressed: () {},
                child: const Text('Text Success'),
              ),
              WxButton(
                variant: WxButtonVariant.tonal,
                severity: successColor,
                onPressed: () {},
                child: const Text('Tonal Success'),
              ),
              WxButton(
                variant: WxButtonVariant.elevated,
                severity: successColor,
                onPressed: () {},
                child: const Text('Elevated Success'),
              ),
              WxButton(
                variant: WxButtonVariant.filled,
                severity: successColor,
                onPressed: () {},
                child: const Text('Filled Success'),
              ),
              WxButton(
                variant: WxButtonVariant.outlined,
                severity: successColor,
                onPressed: () {},
                child: const Text('Outlined Success'),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxButton(
                variant: WxButtonVariant.text,
                severity: infoColor,
                onPressed: () {},
                child: const Text('Text Info'),
              ),
              WxButton(
                variant: WxButtonVariant.tonal,
                severity: infoColor,
                onPressed: () {},
                child: const Text('Tonal Info'),
              ),
              WxButton(
                variant: WxButtonVariant.elevated,
                severity: infoColor,
                onPressed: () {},
                child: const Text('Elevated Info'),
              ),
              WxButton(
                variant: WxButtonVariant.filled,
                severity: infoColor,
                onPressed: () {},
                child: const Text('Filled Info'),
              ),
              WxButton(
                variant: WxButtonVariant.outlined,
                severity: infoColor,
                onPressed: () {},
                child: const Text('Outlined Info'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
