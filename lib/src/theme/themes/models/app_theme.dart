import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_fonts.dart';
import 'flex_tone.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light({
    required bool useMaterial3,
    required int usedTheme,
    required bool swapColors,
    required FlexSurfaceMode surfaceMode,
    required int blendLevel,
    required bool usePrimaryKeyColor,
    required bool useSecondaryKeyColor,
    required bool useTertiaryKeyColor,
    required int usedFlexTone,
    required double drawerWidth,
    required double appBarElevation,
    required FlexAppBarStyle? appBarStyle,
    required double appBarOpacity,
    required bool transparentStatusBar,
    required bool useSubTheme,
    required double? defaultRadius,
    required TargetPlatform platform,
  }) {
    final FlexColorScheme flexScheme = FlexColorScheme.light(
      useMaterial3: useMaterial3,
      colors: schemes[usedTheme].light,
      swapColors: swapColors,
      surfaceMode: surfaceMode,
      blendLevel: blendLevel,
      keyColors: FlexKeyColors(
        useKeyColors: usePrimaryKeyColor,
        useSecondary: useSecondaryKeyColor,
        useTertiary: useTertiaryKeyColor,
      ),
      tones: FlexTone.values[usedFlexTone].tones(Brightness.light),
      appBarElevation: appBarElevation,
      appBarStyle: appBarStyle,
      appBarOpacity: appBarOpacity,
      transparentStatusBar: transparentStatusBar,
      subThemesData: useSubTheme
          ? FlexSubThemesData(
              defaultRadius: defaultRadius,
              thinBorderWidth: 1,
              thickBorderWidth: 2,
              drawerWidth: drawerWidth,
            )
          : null,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: AppFonts.mainFont,
      typography: Typography.material2021(platform: platform),
      platform: platform,
    );

    return flexScheme.toTheme;
  }

  static ThemeData dark({
    required bool useMaterial3,
    required int usedTheme,
    required bool swapColors,
    required FlexSurfaceMode surfaceMode,
    required int blendLevel,
    required bool usePrimaryKeyColor,
    required bool useSecondaryKeyColor,
    required bool useTertiaryKeyColor,
    required int usedFlexTone,
    required double drawerWidth,
    required double appBarElevation,
    required FlexAppBarStyle? appBarStyle,
    required double appBarOpacity,
    required bool transparentStatusBar,
    required bool computeDark,
    required int darkLevel,
    required bool darkIsTrueBlack,
    required bool useSubTheme,
    required double? defaultRadius,
    required TargetPlatform platform,
  }) {
    return FlexThemeData.dark(
      useMaterial3: useMaterial3,
      colors: computeDark
          ? schemes[usedTheme]
              .light
              .defaultError
              .toDark(darkLevel, useMaterial3)
          : schemes[usedTheme].dark,
      swapColors: swapColors,
      surfaceMode: surfaceMode,
      blendLevel: blendLevel,
      keyColors: FlexKeyColors(
        useKeyColors: usePrimaryKeyColor,
        useSecondary: useSecondaryKeyColor,
        useTertiary: useTertiaryKeyColor,
      ),
      tones: FlexTone.values[usedFlexTone].tones(Brightness.dark),
      appBarElevation: appBarElevation,
      appBarStyle: appBarStyle,
      appBarOpacity: appBarOpacity,
      transparentStatusBar: transparentStatusBar,
      darkIsTrueBlack: darkIsTrueBlack,
      subThemesData: useSubTheme
          ? FlexSubThemesData(
              defaultRadius: defaultRadius,
              thinBorderWidth: 1,
              thickBorderWidth: 2,
              drawerWidth: drawerWidth,
            )
          : null,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      fontFamily: AppFonts.mainFont,
      typography: Typography.material2021(platform: platform),
      platform: platform,
    );
  }

  static const FlexSchemeColor _customScheme2Light = FlexSchemeColor(
    primary: Color(0xFF395778),
    primaryContainer: Color(0xFF8096B1),
    secondary: Color(0xFFE7949A),
    secondaryContainer: Color(0xFFF2C4C7),
    tertiary: Color(0xFF49709B),
    tertiaryContainer: Color(0xFF7995B3),
    appBarColor: Color(0xFFE7949A),
  );
  static const FlexSchemeColor _customScheme2Dark = FlexSchemeColor(
    primary: Color(0xFF8096B1),
    primaryContainer: Color(0xFF395778),
    secondary: Color(0xFFF2C4C7),
    secondaryContainer: Color(0xFFE7949A),
    tertiary: Color(0xFFA0B0C4),
    tertiaryContainer: Color(0xFFC9D5E3),
    appBarColor: Color(0xFFF2C4C7),
  );

  static const FlexSchemeColor _customScheme3Light = FlexSchemeColor(
    primary: Color(0xFF2A3639),
    primaryContainer: Color(0xFF98B694),
    secondary: Color(0xFFC1AA44),
    secondaryContainer: Color(0xFFD3C37B),
    tertiary: Color(0xFF405256),
    tertiaryContainer: Color(0xFF64767A),
    appBarColor: Color(0xFFC1AA44),
  );
  static const FlexSchemeColor _customScheme3Dark = FlexSchemeColor(
    primary: Color(0xFF98B694),
    primaryContainer: Color(0xFF2A3639),
    secondary: Color(0xFFD3C37B),
    secondaryContainer: Color(0xFFC1AA44),
    tertiary: Color(0xFFB5CBB2),
    tertiaryContainer: Color(0xFFDDEADB),
    appBarColor: Color(0xFFC6B36A),
  );

  static const FlexSchemeColor _customScheme4Light = FlexSchemeColor(
    primary: Color(0xFF993200),
    primaryContainer: Color(0xFFBE866B),
    secondary: Color(0xFF1B5C62),
    secondaryContainer: Color(0xFF5FA4AC),
    tertiary: Color(0xFFCC4300),
    tertiaryContainer: Color(0xFFE16C33),
    appBarColor: Color(0xFF1B5C62),
  );
  static const FlexSchemeColor _customScheme4Dark = FlexSchemeColor(
    primary: Color(0xFFBE866B),
    primaryContainer: Color(0xFF993200),
    secondary: Color(0xFF5FA4AC),
    secondaryContainer: Color(0xFF1B5C62),
    tertiary: Color(0xFFCEA38E),
    tertiaryContainer: Color(0xFFE9CABB),
    appBarColor: Color(0xFF5FA4AC),
  );

  static const FlexSchemeColor _customScheme5Light = FlexSchemeColor(
    primary: Color(0xFFAA637F),
    primaryContainer: FlexColor.sakuraLightPrimaryContainer,
    secondary: Color(0xFFB19249),
    secondaryContainer: Color(0xFFCFBB8B),
    tertiary: Color(0xFFBC849A),
    tertiaryContainer: Color(0xFFDAAEC0),
    appBarColor: Color(0xFFB19249),
  );
  static const FlexSchemeColor _customScheme5Dark = FlexSchemeColor(
    primary: Color(0xFFBC859B),
    primaryContainer: FlexColor.sakuraDarkPrimaryContainer,
    secondary: Color(0xFFCFBB8B),
    secondaryContainer: Color(0xFFB19249),
    tertiary: Color(0xFFCEA6B6),
    tertiaryContainer: Color(0xFFEBD1DC),
    appBarColor: Color(0xFFCFBB8B),
  );

  static const List<FlexSchemeData> schemes = <FlexSchemeData>[
    FlexSchemeData(
      name: 'Juan and pink',
      description: 'San Juan blue and sea pink.',
      light: _customScheme2Light,
      dark: _customScheme2Dark,
    ),
    FlexColor.mandyRed,
    FlexSchemeData(
      name: 'Moss and mustard',
      description: 'Moss green and mustard yellow.',
      light: _customScheme3Light,
      dark: _customScheme3Dark,
    ),
    FlexSchemeData(
      name: 'Oregon and Eden',
      description: 'Oregon orange and eden green.',
      light: _customScheme4Light,
      dark: _customScheme4Dark,
    ),
    FlexSchemeData(
      name: 'Pink and laser',
      description: 'Tapestry pink and laser yellow',
      light: _customScheme5Light,
      dark: _customScheme5Dark,
    ),
    ...FlexColor.schemesList,
  ];
}
