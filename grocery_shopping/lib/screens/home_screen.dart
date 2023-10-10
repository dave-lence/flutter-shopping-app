import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primaryContainer,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {}, icon: const Icon(Icons.menu)),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Pick Up",
              style: textTheme.bodySmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Location 1",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                IconButton(
                   color: Colors.black,
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: const Icon(
                Icons.shopping_cart,
              ))
        ],
      ),
    );
  }
}
