import 'package:flutter/material.dart';

import '../../domain/entities/car.dart';

class StoryScreenUI extends StatelessWidget {
  final List<Car> cars;
  const StoryScreenUI({
    required this.cars,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              shrinkWrap: true,
              itemCount: cars.length,
              itemBuilder: (context, i) => SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
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
                          Flexible(
                            child: Text(
                              cars[i].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
