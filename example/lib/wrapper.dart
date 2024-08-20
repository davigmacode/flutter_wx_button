import 'package:flutter/material.dart';
import 'package:wx_text/wx_text.dart';
import 'package:wx_button/wx_anchor.dart';
import 'package:url_launcher/url_launcher.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    this.width,
    this.maxWidth = 800,
    required this.source,
    required this.title,
    required this.child,
  });

  final double? width;
  final double maxWidth;
  final String source;
  final String title;
  final Widget child;

  void openCode() async {
    const prefix =
        'https://github.com/davigmacode/flutter_wx_button/blob/main/example/lib/';
    final Uri url = Uri.parse(prefix + source);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WxText.labelLarge(title),
                  WxAnchor.circle(
                    onTap: openCode,
                    iconSize: 16,
                    overlayRadius: 0,
                    hoveredStyle: WxAnchorStyle.circle(overlayRadius: 20),
                    pressedStyle: WxAnchorStyle.circle(overlayRadius: 15),
                    child: const Icon(Icons.code),
                  ),
                ],
              ),
            ),
            Card.outlined(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
