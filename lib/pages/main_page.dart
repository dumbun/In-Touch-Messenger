// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:intouch/pages/email_verfication_page.dart';
// import 'package:intouch/pages/home_page.dart';
// import 'package:intouch/pages/login_page.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return const HomePage();
//           } else {
//             return const LoginPage();
//           }
//         },
//       ),
//     );
//   }
// }
