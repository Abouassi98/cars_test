import 'package:flutter/material.dart';
import '../../domain/entities/car.dart';

class StoryScreenComponent extends StatelessWidget {
  final List<Car> cars;
  const StoryScreenComponent({
    required this.cars,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: cars.length,
            itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      cars[i].seen
                          ? CircleAvatar(
                              backgroundImage: AssetImage(
                                cars[i].avatarUrl,
                              ),
                              radius: 30,
                            )
                          : CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.deepOrange,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundImage: AssetImage(
                                    cars[i].avatarUrl,
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(height: 5),
                      Text(
                        cars[i].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
