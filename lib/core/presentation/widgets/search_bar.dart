import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
              top: BorderSide(
                color: Colors.grey,
              ),
              right: BorderSide(
                color: Colors.grey,
              ),
              left: BorderSide(
                color: Colors.grey,
              )),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textInputAction: TextInputAction.search,
        textAlign: TextAlign.center,
        onFieldSubmitted: (v) {},
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.6),
          ),
          contentPadding: const EdgeInsets.all(10),
          hintText: "ابحث عن سيارتك",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.bold,
          ),
        ),
        onChanged: (v) async {},
      ),
    );
  }
}
