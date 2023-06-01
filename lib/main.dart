import 'package:flutter/material.dart';
import 'package:flutter_app/src/app/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/theme/setting/controller/key_value_db_listener.dart';
import 'src/theme/setting/controller/key_value_db_provider.dart';
import 'src/theme/utils/app_provider_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final ProviderContainer container = ProviderContainer(
    observers: <ProviderObserver>[AppProviderObserver()],
  );
  await container.read(keyValueDbProvider).init();
  container.read(keyValueDbListenerProvider);

  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}
