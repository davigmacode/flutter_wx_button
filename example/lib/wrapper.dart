import 'package:flutter/material.dart';
import 'package:wx_text/wx_text.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    this.width,
    required this.title,
    required this.child,
  });

  final double? width;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: WxText.labelLarge(title),
          ),
          Card.outlined(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
