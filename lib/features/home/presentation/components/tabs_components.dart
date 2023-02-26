import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/custom_tab.dart';

class TabsComponent extends HookConsumerWidget {
  const TabsComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController =
        useTabController(initialLength: 3, vsync: useSingleTickerProvider());

    return TabBar(isScrollable: false, physics: const NeverScrollableScrollPhysics(),controller: tabController, tabs: const [
      Tab(
        child: CustomTab(text: 'اسيوي'),
      ),
      Tab(
        child: CustomTab(text: 'اوروبى'),
      ),
      Tab(
        child: CustomTab(text: 'امريكى'),
      ),
    ]);
  }
}
