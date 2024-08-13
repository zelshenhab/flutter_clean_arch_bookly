import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetalisAppBar extends StatelessWidget {
  const CustomBookDetalisAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart_outlined)),
      ],
    );
  }
}
