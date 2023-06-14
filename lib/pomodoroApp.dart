import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const pomodoroApp());
}

/// pomodoro : 생산성 기술, 25분동안 일하고 5분 동안 쉬는 것
class pomodoroApp extends StatelessWidget {
  const pomodoroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0XFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
