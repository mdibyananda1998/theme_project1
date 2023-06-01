import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_const.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_insets.dart';
import '../../../home/views/home.dart';
import '../../../theme/utils/app_scroll_behavior.dart';
import '../../theme_mode_list_tile.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final double drawerWidth =
        theme.drawerTheme.width ?? (theme.useMaterial3 ? 320 : 304);
    final double screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: GestureDetector(
        onTap: () async {
          Navigator.pop(context);
        },
        child: ScrollConfiguration(
          behavior: ScrollNoEdgeEffect(),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: <Color>[
                      theme.colorScheme.primary,
                      theme.primaryColorLight,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppConst.appName,
                      style: theme.primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'Screen width: ${screenWidth.toStringAsFixed(0)}',
                      style: theme.primaryTextTheme.labelSmall,
                    ),
                    Text(
                      'Drawer theme: ${drawerWidth.toStringAsFixed(0)}',
                      style: theme.primaryTextTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              const _Header('Pages'),
              ListTile(
                title: const Text('Home'),
                trailing: const Icon(AppIcons.menuItemOpen),
                onTap: () async {
                  Navigator.pop(context);
                  await Navigator.pushReplacementNamed(context, HomePage.route);
                },
              ),
              const Divider(),
              const _Header('Theme'),
              const ThemeModeListTile(title: Text('Theme')),
              
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        AppInsets.l,
        AppInsets.s,
        AppInsets.l,
        AppInsets.xs,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
