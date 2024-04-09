import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';
import 'theme_data.dart';

@immutable
class WxButtonThemeDefaults extends WxButtonThemeData {
  WxButtonThemeDefaults(BuildContext context, [super.other]) : super.from();

  @override
  WxButtonStyle get style => const WxButtonStyle(
        variant: WxButtonVariant.text,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.symmetric(horizontal: 16),
      ).merge(super.style);

  @override
  get variantStyle => {
        WxButtonVariant.text: const WxDrivenButtonStyle(
          backgroundOpacity: 0,
          borderStyle: BorderStyle.none,
          disabledStyle: WxButtonStyle(
            foregroundAlpha: WxButtonStyle.disabledForegroundAlpha,
          ),
        ),
        WxButtonVariant.tonal: const WxDrivenButtonStyle(
          backgroundOpacity: .12,
          borderStyle: BorderStyle.none,
          disabledStyle: WxButtonStyle(
            foregroundAlpha: WxButtonStyle.disabledForegroundAlpha,
            backgroundAlpha: WxButtonStyle.disabledBackgroundAlpha,
            borderAlpha: WxButtonStyle.disabledBorderAlpha,
          ),
        ),
        WxButtonVariant.filled: const WxDrivenButtonStyle(
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxButtonStyle(
            foregroundAlpha: WxButtonStyle.disabledForegroundAlpha,
            backgroundAlpha: WxButtonStyle.disabledBackgroundAlpha,
            borderAlpha: WxButtonStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxButtonStyle(elevation: 1),
          pressedStyle: WxButtonStyle(elevation: 0),
        ),
        WxButtonVariant.elevated: const WxDrivenButtonStyle(
          elevation: 1,
          backgroundOpacity: 1,
          borderStyle: BorderStyle.none,
          disabledStyle: WxButtonStyle(
            foregroundAlpha: WxButtonStyle.disabledForegroundAlpha,
            backgroundAlpha: WxButtonStyle.disabledBackgroundAlpha,
            borderAlpha: WxButtonStyle.disabledBorderAlpha,
          ),
          hoveredStyle: WxButtonStyle(elevation: 3),
          pressedStyle: WxButtonStyle(elevation: 1),
        ),
        WxButtonVariant.outlined: const WxDrivenButtonStyle(
          backgroundOpacity: 0,
          borderOpacity: 1,
          borderWidth: 1,
          borderStyle: BorderStyle.solid,
          disabledStyle: WxButtonStyle(
            foregroundAlpha: WxButtonStyle.disabledForegroundAlpha,
            borderAlpha: WxButtonStyle.disabledBorderAlpha,
          ),
        ),
      }.merge(super.variantStyle);
}

@immutable
class WxButtonThemeM2 extends WxButtonThemeData {
  WxButtonThemeM2(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetTheme.of(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxButtonStyle(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 36.0,
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        foregroundStyle: textTheme.labelLarge?.copyWith(height: 1),
        borderColor: colorScheme.outline,
        shadowColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.primary,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: colorScheme.primary,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
          backgroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
          backgroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
          backgroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}

@immutable
class WxButtonThemeM3 extends WxButtonThemeData {
  WxButtonThemeM3(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetTheme.of(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxButtonStyle(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 40.0,
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        foregroundStyle: textTheme.labelLarge?.copyWith(height: 1),
        foregroundColor: colorScheme.primary,
        borderColor: colorScheme.outline,
        shadowColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxButtonVariant.text: WxButtonStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          backgroundOpacity: .3,
          backgroundColor: colorScheme.surfaceVariant,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: colorScheme.surfaceVariant,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          surfaceTint: colorScheme.surfaceTint,
          backgroundColor: colorScheme.surface,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}

@immutable
class ButtonThemeIos extends WxButtonThemeData {
  ButtonThemeIos(
    BuildContext context, [
    super.other,
  ])  : textTheme = Theme.of(context).textTheme,
        colorScheme = Theme.of(context).colorScheme,
        sheetTheme = WxSheetTheme.of(context),
        super.from();

  final TextTheme textTheme;

  final ColorScheme colorScheme;

  final WxSheetThemeData sheetTheme;

  @override
  get style => WxButtonStyle(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 44.0,
        iconSize: 18.0,
        foregroundSpacing: 8.0,
        foregroundStyle: textTheme.labelLarge?.copyWith(height: 1),
        borderColor: colorScheme.outline,
        shadowColor: colorScheme.shadow,
      ).merge(super.style);

  @override
  get variantStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.primary,
          overlayColor: colorScheme.onSurface,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.surface,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: colorScheme.primary,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          overlayColor: colorScheme.onSurface,
        ),
      }.merge(super.variantStyle);

  @override
  get dangerStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.dangerColor,
          borderColor: sheetTheme.dangerColor,
        ),
      }.merge(super.dangerStyle);

  @override
  get warningStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
          backgroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.warningColor,
          borderColor: sheetTheme.warningColor,
        ),
      }.merge(super.warningStyle);

  @override
  get successStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
          backgroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.successColor,
          borderColor: sheetTheme.successColor,
        ),
      }.merge(super.successStyle);

  @override
  get infoStyle => {
        WxButtonVariant.text: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.tonal: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
          backgroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.filled: WxButtonStyle(
          backgroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.elevated: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
        ),
        WxButtonVariant.outlined: WxButtonStyle(
          foregroundColor: sheetTheme.infoColor,
          borderColor: sheetTheme.infoColor,
        ),
      }.merge(super.infoStyle);
}
