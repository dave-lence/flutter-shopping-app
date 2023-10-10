import 'package:flutter/material.dart';

class GroceryTextFormField extends StatelessWidget {
  GroceryTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: TextFormField(
        cursorColor: colorScheme.onPrimary.withAlpha(200),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search_outlined,
            color: colorScheme.onPrimary,
          ),
          hintText: "Search",
          hintStyle: textTheme.bodyMedium!
              .copyWith(color: colorScheme.onPrimary.withAlpha(200)),
          contentPadding: const EdgeInsets.all(16),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: colorScheme.onPrimaryContainer.withAlpha(100),
        ),
      ),
    );
  }
}
