import 'package:flutter/material.dart';
import 'package:grocery_shopping/navigation/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Grocery app",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      routerConfig: AppRouter().router,
    );
  }
}
