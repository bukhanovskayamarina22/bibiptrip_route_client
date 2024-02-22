import 'package:bibiptrip_route_client/pages/splash_screen.dart';
import 'package:bibiptrip_route_client/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: textTheme,
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}

