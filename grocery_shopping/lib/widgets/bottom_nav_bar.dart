import "package:flutter/material.dart";

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return Container(
      child: ClipRRect(
        borderRadius:const BorderRadius.only(topLeft: Radius.circular(48)),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: MaterialStatePropertyAll(Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white))),
          child: NavigationBar(
              backgroundColor: colorSheme.secondary,
              selectedIndex: index,
              indicatorColor: Colors.transparent,
             
              onDestinationSelected: (value) => print(value),
              destinations: const [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    label: "Home",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    label: "Shopping",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.qr_code,
                      color: Colors.white,
                    ),
                    icon: Icon(
                      Icons.qr_code_outlined,
                      color: Colors.white,
                    ),
                    label: "Home",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.history,
                      color: Colors.white,
                    ),
                    icon: Icon(
                      Icons.history_outlined,
                      color: Colors.white,
                    ),
                    label: "Home",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    icon: Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                    ),
                    label: "Home",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
