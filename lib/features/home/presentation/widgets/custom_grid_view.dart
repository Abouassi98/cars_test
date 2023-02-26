import 'package:flutter/material.dart';
import '../../../details_car/presentation/screens/car_details_screen.dart';
import '../../domain/entities/car.dart';
import 'car_card.dart';

class CustomGridView extends StatelessWidget {
  final List<Car> upcomingOrders;
  const CustomGridView({Key? key, required this.upcomingOrders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      scrollDirection: Axis.vertical,
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 5,
        childAspectRatio: 1.2,
      ),
      itemCount: upcomingOrders.length,
      itemBuilder: (context, index) {
        return InkWell(
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
        );
      },
    );
  }
}
