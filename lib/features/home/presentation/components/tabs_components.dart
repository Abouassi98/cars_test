import 'package:flutter/material.dart';

class TabsComponent extends StatelessWidget {
  const TabsComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: const Text(
          'اسيوي',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: const Text(
          'اوروبى',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: const Text(
          'امريكى',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    ]);
  }
}
