// ignore: file_names
import 'dart:ffi';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import '../Modules/home_messages.dart';
import '../widgets/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//// temporary Data:-
  final List<HomeMessages> _homeList = [
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

  final SearchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 25.0,
                  hoverColor: Colors.green,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit_document,
                  ),
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                AnimSearchBar(
                  rtl: true,
                  width: 200.0,
                  textController: SearchText,
                  onSuffixTap: () {
                    setState(() {});
                  },
                  onSubmitted: (string) {
                    debugPrint(SearchText.toString());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 650.0,
                child: _homeList.isEmpty
                    ? Column(
                        children: [
                          const Text(
                            "No Chats Found",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                            width: double.infinity,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.edit_document,
                                color: Colors.grey,
                              ),
                              Text(
                                "Click the Icon to Start Texting",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 0.0,
                            child: ListMessagesView(
                              image: _homeList[index].image,
                              contactName: _homeList[index].name,
                              lastMassages: _homeList[index].lastMassages,
                            ),
                          );
                        },
                        itemCount: _homeList.length,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
