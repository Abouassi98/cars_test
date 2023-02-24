import 'package:flutter/material.dart';

import '../widgets/car_detail_item.dart';


class CarDetailsComponent extends StatelessWidget {
  const CarDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'اللون الخارجى',
          child: Text(
            'ابيض',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'اللون الداخلى',
          child: Text(
            'بيج',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'نوع المقعد',
          child: Text(
            'مخملى',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'فتحة سقف',
          child: Icon(
            Icons.check,
            color: Colors.black,
          ),
        ),
        CarDetailsItem(
            icon: Icons.no_crash_rounded,
            text: 'كاميرا خلفية',
            child: Icon(
              Icons.check,
              color: Colors.black,
            )),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'سينسر',
          child: Text(
            'امامى-خلفى',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'سليندر',
          child: Text(
            '6',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CarDetailsItem(
          icon: Icons.no_crash_rounded,
          text: 'ناقل حركة',
          child: Text(
            'اتوماتيك',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
