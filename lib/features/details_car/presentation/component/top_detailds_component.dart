import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/app_images.dart';
import '../../../../core/presentation/widgets/cusomt_svg_image.dart';
import '../../../../core/presentation/widgets/custom_text.dart';
import '../../../home/domain/entities/car.dart';
import 'car_details_component.dart';

class TopDetailsComponent extends StatelessWidget {
  final Car carData;
  const TopDetailsComponent({super.key, required this.carData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText.f20(
                  context,
                  'يوكن بحالة جيدة',
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    CustomText.f20(
                      context,
                      '8700',
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CustomText.f14(
                        context,
                        'د.ك',
                        weight: FontWeight.w200,
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
                const CustomSvgImage(
                  path: AppImages.carContainerIcon3,
                  height: 20,
                ),
                const SizedBox(
                  width: 25,
                ),
                CustomText.f18(
                  context,
                  'مكفولة حتى ${carData.km} كم',
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const CarDetailsComponent(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: CustomText.f16(
              context,
              'وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة وصف السيارة',
              weight: FontWeight.w300,
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
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(AppImages.carIcon1),
                    )),
                CustomText.f14(
                  context,
                  'يوكن للسيارات المعتمدة',
                  color: Colors.black,
                  weight: FontWeight.w400,
                ),
                CustomText.f14(
                  context,
                  'كل السيارات',
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
