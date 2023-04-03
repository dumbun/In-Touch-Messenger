import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Widget setings(context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          width: double.infinity,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "hello!",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "assets/images/hello.png",
                height: 100,
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 20.0,
        ),

        //// Logout button

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            height: 50,
            width: double.infinity,
            child: TextButton.icon(
              style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(
                  Colors.red,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text("Logout"),
                    content: Image.asset(
                      "assets/images/sadLogout.png",
                      height: 100,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            return Navigator.pop(context, 'Cancel');
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(fontSize: 20.0),
                          )),
                      TextButton(
                          onPressed: () async {
                            await FirebaseAuth.instance.signOut();
                            Navigator.pop(context, 'Logout');
                            if (FirebaseAuth.instance.currentUser == null) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  "/login/", (route) => false);
                            }
                          },
                          child: const Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 20.0),
                          ))
                    ],
                  ),
                );
              },
              icon: const Icon(
                Icons.logout_rounded,
                size: 30,
              ),
              label: const Text(
                "Logout",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
        ),
        ////testing
      ],
    ),
  );
}
