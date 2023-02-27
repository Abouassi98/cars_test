import 'package:flutter/material.dart';
import '../../../../core/presentation/screens/full_screen_platfom_scaffold.dart';
import '../../../../core/presentation/styles/sizes.dart';
import '../../../home/domain/entities/car.dart';
import '../component/bottom_details_component.dart';

import '../../../home/presentation/widgets/car_card.dart';
import '../component/top_detailds_component.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car carData;
  const CarDetailsScreen({
    required this.carData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FullScreenPlatformScaffold(
      hasEmptyAppbar: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            expandedHeight: Sizes.appBarHeight250,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomCarCard(
                isHome: false,
                carData: carData,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return TopDetailsComponent(
                  carData: carData,
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 5,
              childAspectRatio: 1.2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CustomCarCard(
                  isHome: true,
                  carData: carData,
                );
              },
              childCount: 2,
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (_, int index) {
            return const BottomDetailsComponent();
          }))
        ],
      ),
    );
  }
}
