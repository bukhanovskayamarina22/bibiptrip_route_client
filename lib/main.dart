import 'package:bibiptrip_route_client/pages/splash_screen.dart';
import 'package:bibiptrip_route_client/theme.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

enum Cities {
  // ignore: constant_identifier_names
  Kazan,
  // ignore: constant_identifier_names
  Moscow,
  // ignore: constant_identifier_names
  Ufa
}

extension CityName on Cities {
  String get displayName {
    switch (this) {
      case Cities.Kazan:
        return 'Казань';
      case Cities.Moscow:
        return 'Москва';
      case Cities.Ufa:
        return 'Уфа';
      default:
        return '';
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ru'),
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

