import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/presentation/screens/full_screen_platfom_scaffold.dart';
import '../../../../core/presentation/styles/app_images.dart';

import '../../domain/entities/car.dart';
import '../components/car_card.dart';
import '../components/car_details_container.dart';

class CarDetails extends StatelessWidget {
  final Car carData;
  const CarDetails({
    required this.carData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FullScreenPlatformScaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 240,
            width: double.infinity,
            child: CustomCarCard(
              isHome: false,
              carData: carData,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'يوكن بحالة جيدة',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Text(
                      '8700',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'د.ك',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.pink[900],
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.carContainerIcon3,
                  height: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.color),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'مكفولة حتى ${carData.km} كم',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const CarDetailsContainer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(AppImages.carIcon1),
                ),
                Text(
                  'يوكن للسيارات المعتمدة',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'كل السيارات',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            itemCount: 2,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: CustomCarCard(
                  isHome: true,
                  carData: carData,
                ),
              );
            },
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1),
          ),
        ],
      ),
    );
  }
}
