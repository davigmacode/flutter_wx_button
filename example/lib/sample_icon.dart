import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleIcon extends StatelessWidget {
  const SampleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Icon Button',
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              WxIconButton(
                variant: WxButtonVariant.text,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.tonal,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.elevated,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.filled,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.outlined,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              WxIconButton(
                variant: WxButtonVariant.text,
                severity: warningColor,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.tonal,
                severity: warningColor,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.elevated,
                severity: warningColor,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.filled,
                severity: warningColor,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
              WxIconButton(
                variant: WxButtonVariant.outlined,
                severity: warningColor,
                onPressed: () {},
                child: const Icon(Icons.settings),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
