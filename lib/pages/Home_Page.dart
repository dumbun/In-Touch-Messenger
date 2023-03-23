// ignore: file_names
import 'package:flutter/material.dart';
import 'package:intouch/Modules/home_messages.dart';
import '../widgets/nav_bar.dart';
import '../widgets/list_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

//// temporary Data:-
  final List<HomeMessages> homeList = [
    HomeMessages(
        name: "Naruto",
        lastMassages: "dattebayo",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "Sasuke",
        lastMassages: "how is leaf 🍃 ? ",
        image: "assets/images/sasuke.png"),
    HomeMessages(
        name: "Goku",
        lastMassages: "Lets WorkOut ",
        image: "assets/images/goku.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const NavBar(),
            Column(
              children: homeList.map((e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListMessagesView(
                    contactName: e.name,
                    image: e.image,
                    lastMassages: e.lastMassages,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
