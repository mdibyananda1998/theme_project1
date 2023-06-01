import 'package:flutter/material.dart';
import 'package:flutter_app/src/theme/setting/controller/settings.dart';
import 'package:flutter_app/src/theme/utils/app_scroll_behavior.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_const.dart';
import '../home/views/home.dart';
import '../theme/themes/controllers/theme_providers.dart';
import '../theme/utils/drawer_width.dart';
import '../widget/drawer/controllers/drawer_width_provider.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    ref.read(drawerWidthProvider.notifier).state = drawerWidth();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const AppScrollBehavior(),
      title: AppConst.appName,
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: ref.watch(Settings.themeModeProvider),
      initialRoute: HomePage.route,
      routes: <String, WidgetBuilder>{
        HomePage.route: (BuildContext context) => const HomePage(),
      },
    );
  }
}
