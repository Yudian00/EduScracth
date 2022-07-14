import 'package:edu_application/navigation_bar_page.dart';
import 'package:edu_application/pages/auth/forgot_password.dart';
import 'package:edu_application/pages/auth/login_page.dart';
import 'package:edu_application/pages/auth/register_page.dart';
import 'package:edu_application/pages/home/home_page.dart';
import 'package:edu_application/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(const MyApp());
  initializeDateFormatting('id_ID', null);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
      ),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/navigation': (context) => const NavigationBarPage(),
        '/home': (context) => const HomePage(),
        '/profil': (context) => const ProfilePage(),
      },
    );
  }
}
