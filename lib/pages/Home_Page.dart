// ignore: file_names

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import '../Modules/home_messages.dart';
import '../views/messages_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///// NavBar
  int _selectedindex = 0;
  void _onItemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

//// temporary Data:-
  late final List<HomeMessages> _homeList = [
    HomeMessages(
      name: "Naruto",
      lastMassages: "dattebayo",
      image: "assets/images/naruto.png",
    ),
    HomeMessages(
      name: "Sasuke",
      lastMassages: "how is leaf 🍃 ? ",
      image: "assets/images/sasuke.png",
    ),
    HomeMessages(
      name: "Goku",
      lastMassages: "Lets WorkOut ",
      image: "assets/images/goku.png",
    ),
    HomeMessages(
      name: "Naruto",
      lastMassages: "dattebayo",
      image: "assets/images/naruto.png",
    ),
    HomeMessages(
      name: "Sasuke",
      lastMassages: "how is leaf 🍃 ? ",
      image: "assets/images/sasuke.png",
    ),
    HomeMessages(
      name: "Goku",
      lastMassages: "Lets WorkOut ",
      image: "assets/images/goku.png",
    ),
  ];

  final searchText = TextEditingController();

  late Widget homeMessagesView = messagesView(_homeList);

  late final List<Widget> _widgetOptions = <Widget>[
    homeMessagesView,
    const Text("Gpt"),
    const Text("Camera"),
    const Text("Setting"),
  ];

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
            const SingleChildScrollView(
              child: Text(
                "Chats",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
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
                  width: 200.0,
                  textController: searchText,
                  onSuffixTap: () {
                    setState(() {});
                  },
                  onSubmitted: (string) {
                    debugPrint(searchText.toString());
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
              _widgetOptions[_selectedindex],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: "chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_outlined), label: "GPT"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_outlined), label: "camera"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_suggest_outlined), label: "settings"),
        ],
        elevation: 25.0,
        iconSize: 30.0,
        selectedFontSize: 15.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 20,
        currentIndex: _selectedindex,
        onTap: _onItemtapped,
        enableFeedback: true,
        selectedItemColor: Colors.blueAccent,
      ),
    );
  }
}
