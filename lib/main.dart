import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intouch/firebase_options.dart';
import 'package:intouch/pages/home_Page.dart';
import 'package:intouch/pages/email_verfication_page.dart';
import 'package:intouch/pages/login_page.dart';
import 'package:intouch/pages/register_page.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      routes: {
        "/login/": (context) => const LoginPage(),
        "/register/": (context) => RegisterPage(),
        "/home/": (context) => const HomePage(),
        "/verifyEmail/": (context) => const EmailVerfication(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      // const MainPage(),
    );
  }
}
