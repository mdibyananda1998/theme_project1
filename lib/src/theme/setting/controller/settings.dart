import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/settings_entry.dart';
const bool _debug = !kReleaseMode && true;

class Settings {
  Settings._();

  static const bool _useMaterial3 = true;
  static const ThemeMode _themeMode = ThemeMode.system;
  static const int _schemeIndex = 0;

  static const FlexSurfaceMode _lightSurfaceMode =
      FlexSurfaceMode.highBackgroundLowScaffold;
  static const FlexSurfaceMode _darkSurfaceMode =
      FlexSurfaceMode.highBackgroundLowScaffold;

  static const int _lightBlendLevel = 10;
  static const int _darkBlendLevel = 25;

  static const bool _lightSwapColors = false;
  static const bool _darkSwapColors = false;

  static const double _appBarElevation = 0.0;
  static const FlexAppBarStyle _lightAppBarStyle = FlexAppBarStyle.background;
  static const FlexAppBarStyle _darkAppBarStyle = FlexAppBarStyle.background;

  static const bool _transparentStatusBar = true;
  static const double _lightAppBarOpacity = 0.95;
  static const double _darkAppBarOpacity = 0.91;

  static const bool _darkIsTrueBlack = false;
  static const bool _darkComputeTheme = false;
  static const int _darkComputeLevel = 20;

  static const bool _usePrimaryKeyColor = false;
  static const bool _useSecondaryKeyColor = false;
  static const bool _useTertiaryKeyColor = false;
  static const int _usedFlexTone = 1;

  static const bool _useSubThemes = true;

  static const double? _defaultRadius = null;

  static void reset(WidgetRef ref) {
    if (_debug) debugPrint('Settings: reset all DB values');

    ref.read(useMaterial3Provider.notifier).reset();
    ref.read(themeModeProvider.notifier).reset();
    ref.read(schemeIndexProvider.notifier).reset();

    ref.read(lightSurfaceModeProvider.notifier).reset();
    ref.read(darkSurfaceModeProvider.notifier).reset();

    ref.read(lightBlendLevelProvider.notifier).reset();
    ref.read(darkBlendLevelProvider.notifier).reset();

    ref.read(lightSwapColorsProvider.notifier).reset();
    ref.read(darkSwapColorsProvider.notifier).reset();

    ref.read(appBarElevationProvider.notifier).reset();
    ref.read(lightAppBarStyleProvider.notifier).reset();
    ref.read(darkAppBarStyleProvider.notifier).reset();

    ref.read(transparentStatusBarProvider.notifier).reset();
    ref.read(lightAppBarOpacityProvider.notifier).reset();
    ref.read(darkAppBarOpacityProvider.notifier).reset();

    ref.read(darkIsTrueBlackProvider.notifier).reset();
    ref.read(darkComputeThemeProvider.notifier).reset();
    ref.read(darkComputeLevelProvider.notifier).reset();

    ref.read(usePrimaryKeyColorProvider.notifier).reset();
    ref.read(useSecondaryKeyColorProvider.notifier).reset();
    ref.read(useTertiaryKeyColorProvider.notifier).reset();
    ref.read(usedFlexToneProvider.notifier).reset();

    ref.read(useSubThemesProvider.notifier).reset();

    ref.read(defaultRadiusProvider.notifier).reset();
  }

  static void init(Ref ref) {
    if (_debug) debugPrint('Settings: init DB values');

    ref.read(useMaterial3Provider.notifier).init();
    ref.read(themeModeProvider.notifier).init();
    ref.read(schemeIndexProvider.notifier).init();

    ref.read(lightSurfaceModeProvider.notifier).init();
    ref.read(darkSurfaceModeProvider.notifier).init();

    ref.read(lightBlendLevelProvider.notifier).init();
    ref.read(darkBlendLevelProvider.notifier).init();

    ref.read(lightSwapColorsProvider.notifier).init();
    ref.read(darkSwapColorsProvider.notifier).init();

    ref.read(appBarElevationProvider.notifier).init();
    ref.read(lightAppBarStyleProvider.notifier).init();
    ref.read(darkAppBarStyleProvider.notifier).init();

    ref.read(transparentStatusBarProvider.notifier).init();
    ref.read(lightAppBarOpacityProvider.notifier).init();
    ref.read(darkAppBarOpacityProvider.notifier).init();

    ref.read(darkIsTrueBlackProvider.notifier).init();
    ref.read(darkComputeThemeProvider.notifier).init();
    ref.read(darkComputeLevelProvider.notifier).init();

    ref.read(usePrimaryKeyColorProvider.notifier).init();
    ref.read(useSecondaryKeyColorProvider.notifier).init();
    ref.read(useTertiaryKeyColorProvider.notifier).init();
    ref.read(usedFlexToneProvider.notifier).init();

    ref.read(useSubThemesProvider.notifier).init();

    ref.read(defaultRadiusProvider.notifier).init();
  }

  static const String _keyUseMaterial3 = 'useMaterial3';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      useMaterial3Provider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _useMaterial3,
        key: _keyUseMaterial3,
      );
    },
    name: '${_keyUseMaterial3}Provider',
  );

  static const String _keyThemeMode = 'themeMode';

  static final NotifierProvider<SettingsEntry<ThemeMode>, ThemeMode>
      themeModeProvider = NotifierProvider<SettingsEntry<ThemeMode>, ThemeMode>(
    () {
      return SettingsEntry<ThemeMode>(
        defaultValue: _themeMode,
        key: _keyThemeMode,
      );
    },
    name: '${_keyThemeMode}Provider',
  );

  static const String _keySchemeIndex = 'schemeIndex';

  static final NotifierProvider<SettingsEntry<int>, int> schemeIndexProvider =
      NotifierProvider<SettingsEntry<int>, int>(
    () {
      return SettingsEntry<int>(
        defaultValue: _schemeIndex,
        key: _keySchemeIndex,
      );
    },
    name: '${_keySchemeIndex}Provider',
  );

  static const String _keyLightSurfaceMode = 'lightSurfaceMode';

  static final NotifierProvider<SettingsEntry<FlexSurfaceMode>, FlexSurfaceMode>
      lightSurfaceModeProvider =
      NotifierProvider<SettingsEntry<FlexSurfaceMode>, FlexSurfaceMode>(
    () {
      return SettingsEntry<FlexSurfaceMode>(
        defaultValue: _lightSurfaceMode,
        key: _keyLightSurfaceMode,
      );
    },
    name: '${_keyLightSurfaceMode}Provider',
  );

  static const String _keyDarkSurfaceMode = 'darkSurfaceMode';

  static final NotifierProvider<SettingsEntry<FlexSurfaceMode>, FlexSurfaceMode>
      darkSurfaceModeProvider =
      NotifierProvider<SettingsEntry<FlexSurfaceMode>, FlexSurfaceMode>(
    () {
      return SettingsEntry<FlexSurfaceMode>(
        defaultValue: _darkSurfaceMode,
        key: _keyDarkSurfaceMode,
      );
    },
    name: '${_keyDarkSurfaceMode}Provider',
  );

  static const String _keyLightBlendLevel = 'lightBlendLevel';

  static final NotifierProvider<SettingsEntry<int>, int>
      lightBlendLevelProvider = NotifierProvider<SettingsEntry<int>, int>(
    () {
      return SettingsEntry<int>(
        defaultValue: _lightBlendLevel,
        key: _keyLightBlendLevel,
      );
    },
    name: '${_keyLightBlendLevel}Provider',
  );

  static const String _keyDarkBlendLevel = 'darkBlendLevel';

  static final NotifierProvider<SettingsEntry<int>, int>
      darkBlendLevelProvider = NotifierProvider<SettingsEntry<int>, int>(
    () {
      return SettingsEntry<int>(
        defaultValue: _darkBlendLevel,
        key: _keyDarkBlendLevel,
      );
    },
    name: '${_keyDarkBlendLevel}Provider',
  );

  static const String _keyLightSwapColors = 'lightSwapColors';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      lightSwapColorsProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _lightSwapColors,
        key: _keyLightSwapColors,
      );
    },
    name: '${_keyLightSwapColors}Provider',
  );

  static const String _keyDarkSwapColors = 'darkSwapColors';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      darkSwapColorsProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _darkSwapColors,
        key: _keyDarkSwapColors,
      );
    },
    name: '${_keyDarkSwapColors}Provider',
  );

  static const String _keyAppBarElevation = 'appBarElevation';

  static final NotifierProvider<SettingsEntry<double>, double>
      appBarElevationProvider = NotifierProvider<SettingsEntry<double>, double>(
    () {
      return SettingsEntry<double>(
        defaultValue: _appBarElevation,
        key: _keyAppBarElevation,
      );
    },
    name: '${_keyAppBarElevation}Provider',
  );

  static const String _keyLightAppBarStyle = 'lightAppBarStyle';

  static final NotifierProvider<SettingsEntry<FlexAppBarStyle?>,
          FlexAppBarStyle?> lightAppBarStyleProvider =
      NotifierProvider<SettingsEntry<FlexAppBarStyle?>, FlexAppBarStyle?>(
    () {
      return SettingsEntry<FlexAppBarStyle?>(
        defaultValue: _lightAppBarStyle,
        key: _keyLightAppBarStyle,
      );
    },
    name: '${_keyLightAppBarStyle}Provider',
  );

  static const String _keyDarkAppBarStyle = 'darkAppBarStyle';

  static final NotifierProvider<SettingsEntry<FlexAppBarStyle?>,
          FlexAppBarStyle?> darkAppBarStyleProvider =
      NotifierProvider<SettingsEntry<FlexAppBarStyle?>, FlexAppBarStyle?>(
    () {
      return SettingsEntry<FlexAppBarStyle?>(
        defaultValue: _darkAppBarStyle,
        key: _keyDarkAppBarStyle,
      );
    },
    name: '${_keyDarkAppBarStyle}Provider',
  );

  static const String _keyTransparentStatusBar = 'transparentStatusBar';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      transparentStatusBarProvider =
      NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _transparentStatusBar,
        key: _keyTransparentStatusBar,
      );
    },
    name: '${_keyTransparentStatusBar}Provider',
  );

  static const String _keyLightAppBarOpacity = 'lightAppBarOpacity';

  static final NotifierProvider<SettingsEntry<double>, double>
      lightAppBarOpacityProvider =
      NotifierProvider<SettingsEntry<double>, double>(
    () {
      return SettingsEntry<double>(
        defaultValue: _lightAppBarOpacity,
        key: _keyLightAppBarOpacity,
      );
    },
    name: '${_keyLightAppBarOpacity}Provider',
  );

  static const String _keyDarkAppBarOpacity = 'darkAppBarOpacity';

  static final NotifierProvider<SettingsEntry<double>, double>
      darkAppBarOpacityProvider =
      NotifierProvider<SettingsEntry<double>, double>(
    () {
      return SettingsEntry<double>(
        defaultValue: _darkAppBarOpacity,
        key: _keyDarkAppBarOpacity,
      );
    },
    name: '${_keyDarkAppBarOpacity}Provider',
  );

  static const String _keyDarkIsTrueBlack = 'darkIsTrueBlack';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      darkIsTrueBlackProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _darkIsTrueBlack,
        key: _keyDarkIsTrueBlack,
      );
    },
    name: '${_keyDarkIsTrueBlack}Provider',
  );

  static const String _keyDarkComputeTheme = 'darkComputeTheme';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      darkComputeThemeProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _darkComputeTheme,
        key: _keyDarkComputeTheme,
      );
    },
    name: '${_keyDarkComputeTheme}Provider',
  );

  static const String _keyDarkComputeLevel = 'darkComputeLevel';

  static final NotifierProvider<SettingsEntry<int>, int>
      darkComputeLevelProvider = NotifierProvider<SettingsEntry<int>, int>(
    () {
      return SettingsEntry<int>(
        defaultValue: _darkComputeLevel,
        key: _keyDarkComputeLevel,
      );
    },
    name: '${_keyDarkComputeLevel}Provider',
  );

  static const String _keyUsePrimaryKeyColor = 'usePrimaryKeyColor';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      usePrimaryKeyColorProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _usePrimaryKeyColor,
        key: _keyUsePrimaryKeyColor,
      );
    },
    name: '${_keyUsePrimaryKeyColor}Provider',
  );

  static const String _keyUseSecondaryKeyColor = 'useSecondaryKeyColor';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      useSecondaryKeyColorProvider =
      NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _useSecondaryKeyColor,
        key: _keyUseSecondaryKeyColor,
      );
    },
    name: '${_keyUseSecondaryKeyColor}Provider',
  );

  static const String _keyUseTertiaryKeyColor = 'useTertiaryKeyColor';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      useTertiaryKeyColorProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _useTertiaryKeyColor,
        key: _keyUseTertiaryKeyColor,
      );
    },
    name: '${_keyUseTertiaryKeyColor}Provider',
  );

  static const String _keyUsedFlexTone = 'usedFlexTone';

  static final NotifierProvider<SettingsEntry<int>, int> usedFlexToneProvider =
      NotifierProvider<SettingsEntry<int>, int>(
    () {
      return SettingsEntry<int>(
        defaultValue: _usedFlexTone,
        key: _keyUsedFlexTone,
      );
    },
    name: '${_keyUsedFlexTone}Provider',
  );

  static const String _keyUseSubThemes = 'useSubThemes';

  static final NotifierProvider<SettingsEntry<bool>, bool>
      useSubThemesProvider = NotifierProvider<SettingsEntry<bool>, bool>(
    () {
      return SettingsEntry<bool>(
        defaultValue: _useSubThemes,
        key: _keyUseSubThemes,
      );
    },
    name: '${_keyUseSubThemes}Provider',
  );

  static const String _keyDefaultRadius = 'defaultRadius';

  static final NotifierProvider<SettingsEntry<double?>, double?>
      defaultRadiusProvider = NotifierProvider<SettingsEntry<double?>, double?>(
    () {
      return SettingsEntry<double?>(
        defaultValue: _defaultRadius,
        key: _keyDefaultRadius,
      );
    },
    name: '${_keyDefaultRadius}Provider',
  );
}
