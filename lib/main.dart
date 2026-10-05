import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MurshidUTApp());
}

class MurshidUTApp extends StatefulWidget {
  const MurshidUTApp({super.key});

  @override
  State<MurshidUTApp> createState() => _MurshidUTAppState();
}

class _MurshidUTAppState extends State<MurshidUTApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murshid-UT',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: _themeMode,
      home: ChatScreen(
        isDarkMode: _themeMode == ThemeMode.dark,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}