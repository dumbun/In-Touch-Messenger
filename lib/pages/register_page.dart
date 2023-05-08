import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intouch/widgets/alert_dilog.dart';
import 'package:intouch/widgets/register_textfileds.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  //! controlers

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _verifiedPassword = TextEditingController();

  //! register logic

  void register(context) async {
    final email = _email.text;
    final password = _password.text;
    final verfiedPassword = _verifiedPassword.text;
    if (password == verfiedPassword) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        try {
          await FirebaseAuth.instance.currentUser!.sendEmailVerification();
          //// to change the user data to updated data
          await FirebaseAuth.instance.currentUser?.reload();
        } on FirebaseAuthException catch (e) {
          GetAlertDialog().singleActionDialog(
              context: context, title: "Error", content: e.code);
        }

        Navigator.of(context)
            .pushNamedAndRemoveUntil('/verifyEmail/', (route) => false);
      } on FirebaseAuthException catch (e) {
        // email-already-in-use
        if (e.code == "email-already-in-use") {
          return GetAlertDialog().singleActionDialog(
              context: context,
              title: "Email-Error",
              content: "Email Already Exits");
        }
        // invalid-email
        else if (e.code == " invalid-email" ||
            e.code == "The email address is badly formatted") {
          return GetAlertDialog().singleActionDialog(
              context: context, title: "Email-Error", content: "Invalid Email");
        }
        // weak-password
        else if (e.code == "weak-password") {
          return GetAlertDialog().singleActionDialog(
              context: context,
              title: "Password-Error",
              content: "Week Password Choose a Strong Password");
        } else {
          return GetAlertDialog().singleActionDialog(
            context: context,
            title: "Error",
            content: e.code.toString(),
          );
        }
      }
    } else if (password != verfiedPassword) {
      GetAlertDialog().singleActionDialog(
          context: context,
          title: "Password not same ",
          content: "Please enter the same password in both fields ");
    }
  }

  void dispose() {
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //// icon

              const Icon(
                Icons.app_registration_rounded,
                size: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 25,
              ),

              //// Email input field
              RegisterTextfileds(
                inputController: _email,
                label: "Enter your Email",
                keybordType: TextInputType.emailAddress,
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),

              //// Password input field
              RegisterTextfileds(
                inputController: _password,
                label: "Enter your Password",
                keybordType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //// Verified Password TextField

              RegisterTextfileds(
                inputController: _verifiedPassword,
                label: "Enter your Password",
                keybordType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),

              //// register Button

              ElevatedButton(
                onPressed: () {
                  register(context);
                },
                child: const Text(
                  "Please verify your Email",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //// login route

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Registered!",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil("/login/", (route) => true),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
