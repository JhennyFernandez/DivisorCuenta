import 'package:flutter/material.dart';
import 'pantallas/pantalla_cuenta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Divisor de Cuenta',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F4F6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: Colors.black,
          surface: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const PantallaCuenta(),
    );
  }
}
