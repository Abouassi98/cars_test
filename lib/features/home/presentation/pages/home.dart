import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/presentation/screens/full_screen_platfom_scaffold.dart';
import '../../../../core/presentation/styles/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/custom_appbar.dart';
import '../../../../core/presentation/widgets/custom_text.dart';
import '../../../../core/presentation/widgets/loading_indicators.dart';
import '../../../../core/presentation/widgets/search_bar.dart';

import '../components/car_card.dart';

import '../components/story_screen_ui.dart';
import '../providers/get_cars_provider.dart';
import 'car_details.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCars = ref.watch(getCarsProvider);
    return FullScreenPlatformScaffold(
      platformAppBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50), child: CustomAppBar()),
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
                        child: StoryScreenUI(cars: upcomingOrders),
                      ),
                      Image.asset(
                        AppImages.carIcon3,
                        width: double.infinity,
                      ),
                      const SearchBar(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Text(
                                'اسيوي',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Text(
                                'اوروبى',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Text(
                                'امريكى',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ]),
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
                                    return CarDetails(
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
