import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/presentation/screens/full_screen_platfom_scaffold.dart';
import '../../../../core/presentation/styles/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/custom_text.dart';
import '../../../../core/presentation/widgets/loading_indicators.dart';
import '../../../../core/presentation/widgets/custom_search_bar.dart';
import '../components/story_screen_component.dart';
import '../components/tabs_components.dart';
import '../providers/get_cars_provider.dart';
import '../widgets/custom_grid_view.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCars = ref.watch(getCarsProvider);
    return FullScreenPlatformScaffold(
      hasEmptyAppbar: false,
      body: getCars.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: !getCars.hasError,
          error: (error, st) => CustomText.f18(
                context,
                'هناك خطا ما يرجي المحاوله لاحقا',
                //alignment: Alignment.center,
                textAlign: TextAlign.center,
              ),
          loading: () => const SmallLoadingAnimation(),
          data: (upcomingOrders) {
            return upcomingOrders.isNotEmpty
                ? DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: StoryScreenComponent(cars: upcomingOrders),
                        ),
                        Image.asset(
                          AppImages.carIcon3,
                          width: double.infinity,
                        ),
                        const CustomSearchBar(),
                        const TabsComponent(),
                        CustomGridView(upcomingOrders: upcomingOrders),
                        Image.asset(
                          AppImages.carIcon4,
                          width: double.infinity,
                        ),
                      ]),
                    ))
                : CustomText.f18(
                    context,
                    'لا يوجد عناصر',
                  );
          }),
    );
  }
}
