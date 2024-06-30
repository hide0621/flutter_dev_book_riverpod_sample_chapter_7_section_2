/// Riverpod
/// Providerを活用した最小のサンプル

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetProvider = Provider((ref) {
  return 'Hello, Flutter!!';
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(greetProvider);
    return Center(
      child: Text(greet),
    );
  }
}
