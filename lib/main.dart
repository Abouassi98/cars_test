

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';
import 'core/presentation/providers/provider_observers.dart';

part 'core/presentation/services/main_initializer.dart';
void main() async {
  await _mainInitializer();
  runApp(
    ProviderScope(
      observers: [LogProviderObserver()],
      child: const MyApp(),
    ),
  );
}
