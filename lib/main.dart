import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart'; // Предполагая, что у вас есть home_screen.dart в вашем проекте

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Обязательно для инициализации Firebase
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // Используйте HomeScreen как начальный экран
    );
  }
}
