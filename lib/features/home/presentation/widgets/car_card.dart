import 'package:flutter_svg/svg.dart';

import '../../../../core/presentation/styles/app_images.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

import '../../domain/entities/car.dart';

class CustomCarCard extends StatelessWidget {
  final Car carData;
  final bool isHome;
  const CustomCarCard({super.key, required this.carData, required this.isHome});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: isHome
              ? MediaQuery.of(context).size.height * 0.15
              : MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    carData.avatarUrl,
                  ),
                  fit: isHome ? BoxFit.cover : BoxFit.fill)),
        ),
        isHome == true
            ? Container(
                width: double.infinity,
                color: Colors.white.withOpacity(0.7),
                child: const Text(
                  'جى ام سى | يوكن | الفئة الرابعه',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.6),
                            child: SvgPicture.asset(
                              AppImages.carContainerIcon6,
                              height: 20,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.6),
                            child: SvgPicture.asset(
                              AppImages.carContainerIcon5,
                              height: 20,
                            )),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white.withOpacity(0.6),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Visibility(
                  visible: !isHome,
                  child: CustomContainer(
                    image: AppImages.carContainerIcon4,
                    text: 'المحرك/سلندر',
                    num: carData.time,
                    isHome: isHome,
                  ),
                ),
                Visibility(
                  visible: isHome,
                  child: CustomContainer(
                    image: AppImages.carContainerIcon0,
                    text: 'السعر',
                    num: carData.price,
                    isHome: isHome,
                  ),
                ),
                CustomContainer(
                  image: AppImages.carContainerIcon1,
                  text: 'سنة الصنع',
                  num: carData.year,
                  isHome: isHome,
                ),
                CustomContainer(
                  image: AppImages.carContainerIcon2,
                  text: isHome == true ? 'كم' : 'الممشى',
                  num: carData.km,
                  isHome: isHome,
                ),
                Visibility(
                  visible: isHome,
                  child: CustomContainer(
                    image: AppImages.carContainerIcon3,
                    text: ' مكفولة لـ',
                    num: carData.time,
                    isHome: isHome,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
