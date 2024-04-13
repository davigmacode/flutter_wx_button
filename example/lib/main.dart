import 'package:flutter/material.dart';
import 'package:theme_patrol/theme_patrol.dart';
import 'package:wx_button/wx_button.dart';
import 'package:wx_text/wx_text.dart';

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
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
            useMaterial3: true,
            extensions: [
              WxButtonThemeM2(context),
            ],
          ),
          dark: ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
            extensions: [
              WxButtonThemeM2(context),
            ],
          ),
        ),
        'm3': ThemeConfig.withMode(
          description: 'Material 3',
          light: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
            useMaterial3: true,
            extensions: [
              WxButtonThemeM3(context),
            ],
          ),
          dark: ThemeData(
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
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
              const WxText.displayMedium('WxButton'),
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
                    WxButton(
                      variant: WxButtonVariant.elevated,
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
                      pressedStyle: WxButtonStyle(
                        border: const RoundedRectangleBorder(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                    WxOutlinedButton(
                      onPressed: () {},
                      enabledStyle: const WxButtonStyle(
                        border: RoundedRectangleBorder(),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.antiAlias,
                      ),
                      hoveredStyle: const WxButtonStyle(
                        border: CircleBorder(),
                      ),
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
