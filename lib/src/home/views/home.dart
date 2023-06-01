import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_const.dart';
import '../../constants/app_insets.dart';
import '../../theme/utils/page_body.dart';
import '../../widget/drawer/views/app_drawer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  static const String route = '/home';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(
      keepScrollOffset: true,
      debugLabel: 'pageBodyScroll',
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final TextStyle medium = textTheme.headlineMedium!;

    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top + kToolbarHeight + AppInsets.m;
    final double bottomPadding =
        media.padding.bottom + kBottomNavigationBarHeight;

    final bool isNarrow = media.size.width < AppInsets.phoneWidthBreakpoint;
    final double sideMargin = isNarrow ? 0 : AppInsets.l;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(AppConst.appName),
      ),
      drawer: const AppDrawer(),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: PageBody(
          controller: scrollController,
          child: ListView(
              controller: scrollController,
              padding: EdgeInsets.fromLTRB(
                sideMargin,
                topPadding,
                sideMargin,
                bottomPadding,
              ),
              children: const []),
        ),
      ),
    );
  }
}
