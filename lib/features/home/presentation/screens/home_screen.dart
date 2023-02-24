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
import '../widgets/car_card.dart';
import 'car_details_screen.dart';

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
                ? ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    children: [
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
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        scrollDirection: Axis.vertical,
                        primary: false,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2,
                                childAspectRatio: 1),
                        itemCount: upcomingOrders.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return CarDetailsScreen(
                                      carData: upcomingOrders[index],
                                    );
                                  },
                                ));
                              },
                              child: CustomCarCard(
                                isHome: true,
                                carData: upcomingOrders[index],
                              ),
                            ),
                          );
                        },
                      ),
                      Image.asset(
                        AppImages.carIcon4,
                        width: double.infinity,
                      ),
                    ],
                  )
                : CustomText.f18(
                    context,
                    'لا يوجد عناصر',
                    //alignment: Alignment.center,
                  );
          }),
    );
  }
}
