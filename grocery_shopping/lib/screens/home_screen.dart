import 'package:flutter/material.dart';
import 'package:grocery_shopping/widgets/bottom_nav_bar.dart';
import 'package:grocery_shopping/widgets/grocery_text_form_field.dart';

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
                onPressed: () {},
                icon: const Icon(Icons.menu)),
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
                    const SizedBox(width: 5),
                    IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down))
                  ],
                )
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: const Badge(
                    isLabelVisible: true,
                    label: Text("3"),
                    child: Icon(Icons.shopping_cart),
                  ))
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(56.0),
              child: GroceryTextFormField(),
            )),
            bottomNavigationBar: const BottomNavBar(index:0),
            );
  }
}

