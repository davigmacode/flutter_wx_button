import 'package:flutter/material.dart';
import 'package:theme_patrol/theme_patrol.dart';
import 'package:wx_button/wx_button.dart';
import 'package:wx_text/wx_text.dart';
import 'package:widget_event/widget_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemePatrol(
      themes: {
        'm2': ThemeConfig.withMode(
          description: 'Material 2',
          light: ThemeData(
            useMaterial3: false,
            extensions: [
              WxButtonThemeM2(context),
            ],
          ),
          dark: ThemeData(
            useMaterial3: false,
            brightness: Brightness.dark,
            extensions: [
              WxButtonThemeM2(context),
            ],
          ),
        ),
        'm3': ThemeConfig.withMode(
          description: 'Material 3',
          light: ThemeData(
            useMaterial3: true,
            extensions: [
              WxButtonThemeM3(context),
            ],
          ),
          dark: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            extensions: [
              WxButtonThemeM3(context),
            ],
          ),
        ),
      },
      initialTheme: 'm2',
      builder: (context, theme, child) {
        return MaterialApp(
          title: 'WxSheet Demo',
          theme: theme.lightData,
          darkTheme: theme.darkData,
          themeMode: theme.mode,
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              const WxText.displayMedium(
                'WxButton',
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.blue,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                fontWeight: FontWeight.bold,
                letterSpacing: -2,
              ),
              const SizedBox(height: 10),
              const ThemePicker(),
              const SizedBox(height: 40),
              Wrapper(
                title: 'Variant',
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    WxTextButton(
                      onPressed: () {},
                      child: const Text('Text Button'),
                    ),
                    WxTonalButton(
                      onPressed: () {},
                      child: const Text('Tonal Button'),
                    ),
                    WxElevatedButton(
                      onPressed: () {},
                      child: const Text('Elevated Button'),
                    ),
                    WxFilledButton(
                      onPressed: () {},
                      child: const Text('Filled Button'),
                    ),
                    WxOutlinedButton(
                      onPressed: () {},
                      child: const Text('Outlined Button'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrapper(
                title: 'Severity',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        WxTextButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.danger,
                          child: const Text('Text Danger'),
                        ),
                        WxTonalButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.danger,
                          child: const Text('Tonal Danger'),
                        ),
                        WxElevatedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.danger,
                          child: const Text('Elevated Danger'),
                        ),
                        WxFilledButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.danger,
                          child: const Text('Filled Danger'),
                        ),
                        WxOutlinedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.danger,
                          child: const Text('Outlined Danger'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        WxTextButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.warning,
                          child: const Text('Text Warning'),
                        ),
                        WxTonalButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.warning,
                          child: const Text('Tonal Warning'),
                        ),
                        WxElevatedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.warning,
                          child: const Text('Elevated Warning'),
                        ),
                        WxFilledButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.warning,
                          child: const Text('Filled Warning'),
                        ),
                        WxOutlinedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.warning,
                          child: const Text('Outlined Warning'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        WxTextButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.success,
                          child: const Text('Text Success'),
                        ),
                        WxTonalButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.success,
                          child: const Text('Tonal Success'),
                        ),
                        WxElevatedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.success,
                          child: const Text('Elevated Success'),
                        ),
                        WxFilledButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.success,
                          child: const Text('Filled Success'),
                        ),
                        WxOutlinedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.success,
                          child: const Text('Outlined Success'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        WxTextButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.info,
                          child: const Text('Text Info'),
                        ),
                        WxTonalButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.info,
                          child: const Text('Tonal Info'),
                        ),
                        WxElevatedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.info,
                          child: const Text('Elevated Info'),
                        ),
                        WxFilledButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.info,
                          child: const Text('Filled Info'),
                        ),
                        WxOutlinedButton(
                          onPressed: () {},
                          severity: WxButtonSeverity.info,
                          child: const Text('Outlined Info'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrapper(
                title: 'Children',
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    WxTextButton(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      child: const Text('Leading'),
                    ),
                    WxTonalButton(
                      onPressed: () {},
                      trailing: const Icon(Icons.close),
                      child: const Text('Trailing'),
                    ),
                    WxElevatedButton(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Leading and Trailing'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrapper(
                title: 'Icon',
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    WxTextButton.icon(
                      onPressed: () {},
                      child: const Icon(Icons.settings),
                    ),
                    WxTonalButton.icon(
                      onPressed: () {},
                      border: const RoundedRectangleBorder(),
                      child: const Icon(Icons.settings),
                    ),
                    WxElevatedButton.icon(
                      onPressed: () {},
                      child: const Icon(Icons.settings),
                    ),
                    WxFilledButton.icon(
                      onPressed: () {},
                      hoveredStyle: WxButtonStyle(
                        border: const RoundedRectangleBorder(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                    WxOutlinedButton(
                      onPressed: () {},
                      style: const WxButtonStyle(
                        border: RoundedRectangleBorder(),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.antiAlias,
                      ),
                      pressedStyle: const WxButtonStyle(
                        border: CircleBorder(),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrapper(
                title: 'Block',
                width: 300,
                child: Column(
                  children: [
                    WxTextButton.block(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Text'),
                    ),
                    WxTonalButton.block(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Tonal'),
                    ),
                    WxElevatedButton.block(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Elevated'),
                    ),
                    WxFilledButton.block(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Filled'),
                    ),
                    WxOutlinedButton.block(
                      onPressed: () {},
                      leading: const Icon(Icons.calendar_month),
                      trailing: const Icon(Icons.close),
                      child: const Text('Outlined'),
                    ),
                  ]
                      .asMap()
                      .entries
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: e.value,
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
              const Wrapper(
                title: 'Loading',
                width: 300,
                child: LoadingButtons(),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingButtons extends StatefulWidget {
  const LoadingButtons({super.key});

  @override
  State<LoadingButtons> createState() => _LoadingButtonsState();
}

class _LoadingButtonsState extends State<LoadingButtons> {
  bool loading = false;

  void setLoading(bool value) {
    setState(() {
      loading = value;
    });
  }

  void load() {
    setLoading(true);
    Future.delayed(const Duration(seconds: 3), () {
      setLoading(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      WxOutlinedButton.block(
        onPressed: load,
        loading: loading,
        trailing: DrivenWidget.by((events) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: WxButtonEvent.isLoading(events)
                ? const SizedBox.square(
                    dimension: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : Container(),
          );
        }),
        child: DrivenWidget.by((events) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: WxButtonEvent.isLoading(events)
                ? const Text('Loading..', key: ValueKey('loading'))
                : WxButtonEvent.isHovered(events)
                    ? const Text('Hovered', key: ValueKey('hovered'))
                    : const Text(
                        'Enabled',
                        key: ValueKey('enabled'),
                      ),
          );
        }),
      ),
    ]);
  }
}

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

class ThemePicker extends StatelessWidget {
  const ThemePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeConsumer(builder: (context, theme, child) {
      return Wrap(
        spacing: 15,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ChoiceChip(
            label: const Text('Material 2'),
            selected: theme.selected == 'm2',
            onSelected: (_) {
              theme.select('m2');
            },
          ),
          ChoiceChip(
            label: const Text('Material 3'),
            selected: theme.selected == 'm3',
            onSelected: (_) {
              theme.select('m3');
            },
          ),
          IconButton.outlined(
            onPressed: theme.toggleMode,
            icon: Icon(theme.modeIcon),
          ),
        ],
      );
    });
  }
}
