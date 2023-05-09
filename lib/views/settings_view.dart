import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intouch/widgets/settings_buttons.dart';

Widget setings(context) {
  Future logoutPop(context) async {
    Navigator.pop(context, 'Logout');
    await FirebaseAuth.instance.signOut();
  }

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
                "InTouch!",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/cat.png",
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/hello.png",
                    height: 100,
                  ),
                ],
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

        //// profile
        SettingsButtons(
          title: "Profile",
          icon: Icons.face,
          color: Colors.purple,
          onPressed: () {},
        ),

        //// Settings
        SettingsButtons(
          title: "settings",
          icon: Icons.settings,
          color: Colors.green,
          onPressed: () {},
        ),

        //// Invite
        SettingsButtons(
          title: "Invite",
          icon: Icons.connect_without_contact_rounded,
          color: Colors.blue,
          onPressed: () {},
        ),

        //// Logout button
        SettingsButtons(
          title: "Logout",
          icon: Icons.logout_rounded,
          color: Colors.red,
          onPressed: () {
            return showDialog(
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
                    onPressed: () {
                      logoutPop(context);
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("/login/", (route) => false);
                    },
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20.0,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),

        ////testing
      ],
    ),
  );
}
