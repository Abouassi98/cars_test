import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/platform_widgets/platform_scaffold.dart';

class FullScreenPlatformScaffold extends ConsumerWidget {
  const FullScreenPlatformScaffold({
    required this.body,
    this.platformAppBar,
    this.darkOverlays,
    Key? key,
  }) : super(key: key);

  final Widget body;
  final bool? darkOverlays;
  final dynamic platformAppBar;

  @override
  Widget build(BuildContext context, ref) {
    return PlatformScaffold(
      hasEmptyAppbar: false,
      // platformAppBar: platformAppBar,
      body: body,
    );
  }
}
