/// Riverpod
/// Providerを活用した最小のサンプル
///
/// Provider: 状態をキャッシュする
/// RefやWidgetRef: これを介して状態を提供する
/// ConsumerWidget: ウィジェットのサブクラス、buildメソッドの引数にWidgetRefが渡され、これを介して状態を取得してウィジェットを構築する
/// Providerの持つ状態が変化すると、buildメソッドが再び呼び出される

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
