import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          hintText: "Search",
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 22,
              ))),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
