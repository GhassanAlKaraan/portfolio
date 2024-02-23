import 'package:flutter/material.dart';
import 'package:my_portfolio/home.dart';
import 'package:my_portfolio/resources/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // @override
  // Widget build(BuildContext context) {
  //   return Consumer<ThemeProvider>(
  //     builder: (context, value, child) {
  //       return MaterialApp(
  //           title: "Ghassan's Portfolio",
  //           debugShowCheckedModeBanner: false,
  //           theme: Provider.of<ThemeProvider>(context).themeData,
  //           home: const HomePage());
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: "Ghassan's Portfolio",
          debugShowCheckedModeBanner: false,
          theme: themeProvider.themeData,
          home: const HomePage(),
        );
      },
    );
  }
}
