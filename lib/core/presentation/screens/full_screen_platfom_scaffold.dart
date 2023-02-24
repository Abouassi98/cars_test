import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/platform_widgets/platform_scaffold.dart';

class FullScreenPlatformScaffold extends ConsumerWidget {
  const FullScreenPlatformScaffold({
    required this.body,
    this.darkOverlays,
    required this.hasEmptyAppbar,
    Key? key,
  }) : super(key: key);

  final Widget body;
  final bool? darkOverlays;
  final bool hasEmptyAppbar;

  @override
  Widget build(BuildContext context, ref) {
    return PlatformScaffold(
      hasEmptyAppbar: hasEmptyAppbar,
      body: body,
    );
  }
}
