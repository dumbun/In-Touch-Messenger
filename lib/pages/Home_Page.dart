import 'package:flutter/material.dart';
import 'package:intouch/Modules/home_messages.dart';
import '../widgets/nav_bar.dart';
import '../widgets/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//// temporary Data:-
  final List<HomeMessages> homeList = [
    HomeMessages(
        name: "Naruto",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "ram",
        lastMassages: "how are you ?",
        image: "assets/images/sasuke.png"),
    HomeMessages(
        name: "Naruto",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "ram",
        lastMassages: "how are you ?",
        image: "assets/images/sasuke.png"),
    HomeMessages(
        name: "Naruto",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "ram",
        lastMassages: "how are you ?",
        image: "assets/images/sasuke.png"),
    HomeMessages(
        name: "Naruto",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "vamshi",
        lastMassages: "krishna",
        image: "assets/images/naruto.png"),
    HomeMessages(
        name: "ram",
        lastMassages: "how are you ?",
        image: "assets/images/sasuke.png"),
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
                padding: const EdgeInsets.all(8.0),
                child: ListMessagesView(
                  contactName: e.name,
                  image: e.image,
                  lastMassages: e.lastMassages,
                ),
              );
            }).toList(),
          )
        ],
      ),
    ));
  }
}
