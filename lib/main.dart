import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chatpage.dart';
import 'package:whatsapp/pages/home_page.dart';
import 'package:whatsapp/pages/settingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Color(0xFF075E55),
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0),
          )),
      routes: {
        "/": (context) => const HomePage(),
        "SettingsPage": (context) => const SettingsPage(),
        "ChatPage": (context) => const ChatPage(),
      },
    );
  }
}
