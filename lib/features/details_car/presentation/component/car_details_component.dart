import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/custom_text.dart';
import '../widgets/car_detail_item.dart';

class CarDetailsComponent extends StatelessWidget {
  const CarDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'اللون الخارجى',
          child: CustomText.f14(
            context,
            'ابيض',
            textAlign: TextAlign.center,
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'اللون الداخلى',
          child: CustomText.f14(
            context,
            'بيج',
            textAlign: TextAlign.center,
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'نوع المقعد',
          child: CustomText.f14(
            context,
            'مخملى',
            textAlign: TextAlign.center,
          ),
        ),
        const CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'فتحة سقف',
          child: Icon(
            Icons.check,
            color: Colors.black,
          ),
        ),
        const CarDetailsItem(
            icon: Icons.no_crash_rounded,
            text: 'كاميرا خلفية',
            child: Icon(
              Icons.check,
              color: Colors.black,
            )),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'سينسر',
          child: CustomText.f14(
            context,
            'امامى-خلفى',
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'سليندر',
          child: CustomText.f14(
            context,
            '6',
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'ناقل حركة',
          child: CustomText.f14(
            context,
            'اتوماتيك',
          ),
        ),
      ],
    );
  }
}
