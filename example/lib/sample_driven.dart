import 'package:animated_repeatable/animated_repeatable.dart';
import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'package:wx_button/wx_event.dart';
import 'wrapper.dart';

class SampleDriven extends StatelessWidget {
  const SampleDriven({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Mix Appearance and Widget on Event Change',
      source: 'sample_driven.dart',
      maxWidth: 450,
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            const LoadingButton(
              variant: WxButtonVariant.filled,
              trailing: DrivenSpinner(width: 3, size: 14),
              child: Text('Trailing Spinner'),
            ),
            const LoadingButton(
              leadingSpinner: true,
              variant: WxButtonVariant.outlined,
              hoveredStyle: WxButtonStyle(
                variant: WxButtonVariant.tonal,
                severity: Colors.amber,
              ),
              loadingStyle: WxButtonStyle(
                variant: WxButtonVariant.text,
                severity: Colors.red,
              ),
              child: Text('Leading Spinner'),
            ),
            LoadingIconButton(
              variant: WxButtonVariant.tonal,
              hoveredStyle: const WxButtonStyle(
                variant: WxButtonVariant.filled,
                severity: Colors.green,
              ),
              loadingStyle: const WxButtonStyle(
                variant: WxButtonVariant.outlined,
                severity: Colors.red,
              ),
              child: DrivenChild.by((events) {
                return AnimatedRepeatable(
                  pause: !WxButtonEvent.isHovered(events),
                  duration: const Duration(milliseconds: 1500),
                  transition: AnimatedRepeatable.spin,
                  child: WxButtonEvent.isLoading(events)
                      ? const DrivenSpinner(size: 14)
                      : const Icon(Icons.settings),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingButton extends StatefulWidget {
  const LoadingButton({
    super.key,
    this.variant = WxButtonVariant.outlined,
    this.hoveredStyle,
    this.loadingStyle,
    this.leading,
    this.trailing,
    this.leadingSpinner,
    this.trailingSpinner,
    required this.child,
  });

  final WxButtonVariant variant;
  final WxButtonStyle? hoveredStyle;
  final WxButtonStyle? loadingStyle;
  final Widget? leading;
  final Widget? trailing;
  final bool? leadingSpinner;
  final bool? trailingSpinner;
  final Widget child;

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool loading = false;

  void setLoading(bool value) {
    if (mounted) {
      setState(() {
        loading = value;
      });
    }
  }

  void load() {
    setLoading(true);
    Future.delayed(const Duration(seconds: 3), () {
      setLoading(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WxButton(
      variant: widget.variant,
      onPressed: load,
      loading: loading,
      leading: widget.leading,
      trailing: widget.trailing,
      leadingSpinner: widget.leadingSpinner,
      trailingSpinner: widget.trailingSpinner,
      hoveredStyle: widget.hoveredStyle,
      loadingStyle: widget.loadingStyle,
      spacing: 12,
      child: DrivenSwitcher(
        widget.child,
        atHovered: const Text('Button Hovered'),
        atPressed: const Text('Button Pressed'),
        atLoading: const Text('Button Loading'),
      ),
    );
  }
}

class LoadingIconButton extends StatefulWidget {
  const LoadingIconButton({
    super.key,
    this.variant = WxButtonVariant.outlined,
    this.hoveredStyle,
    this.loadingStyle,
    required this.child,
  });

  final WxButtonVariant variant;
  final WxButtonStyle? hoveredStyle;
  final WxButtonStyle? loadingStyle;
  final Widget child;

  @override
  State<LoadingIconButton> createState() => _LoadingIconButtonState();
}

class _LoadingIconButtonState extends State<LoadingIconButton> {
  bool loading = false;

  void setLoading(bool value) {
    if (mounted) {
      setState(() {
        loading = value;
      });
    }
  }

  void load() {
    setLoading(true);
    Future.delayed(const Duration(seconds: 3), () {
      setLoading(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WxIconButton(
      variant: widget.variant,
      onPressed: load,
      loading: loading,
      hoveredStyle: widget.hoveredStyle,
      loadingStyle: widget.loadingStyle,
      child: widget.child,
    );
  }
}
