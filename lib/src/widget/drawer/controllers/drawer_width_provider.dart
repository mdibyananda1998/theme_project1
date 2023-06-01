import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/utils/drawer_width.dart';

final StateProvider<double> drawerWidthProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return drawerWidth();
});
