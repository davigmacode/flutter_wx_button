import 'package:flutter/material.dart';
import 'package:wx_button/wx_button.dart';
import 'package:wx_button/wx_event.dart';
import 'wrapper.dart';

class SampleDriven extends StatelessWidget {
  const SampleDriven({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Driven Widget',
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            LoadingButton(
              trailing: DrivenSpinner(width: 4),
            ),
            SizedBox(height: 10),
            LoadingButton(
              leading: DrivenSpinner(color: Colors.red),
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
    this.leading,
    this.trailing,
  });

  final Widget? leading;
  final Widget? trailing;

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
    return DrivenSpinnerTheme.merge(
      width: 2,
      child: WxButton(
        variant: WxButtonVariant.outlined,
        onPressed: load,
        loading: loading,
        leading: widget.leading,
        trailing: widget.trailing,
        loadingStyle: const WxButtonStyle(borderColor: Colors.red),
        child: const DrivenSwitcher(
          Text('Enabled'),
          atHovered: Text('Hovered'),
          atPressed: Text('Pressed'),
          atLoading: Text('Loading'),
        ),
      ),
    );
  }
}
