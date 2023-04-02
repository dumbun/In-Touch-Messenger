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

  final TextEditingController searchText = TextEditingController();

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
                  //todo add a view for starting new text
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
                  onSuffixTap: () {},
                  onSubmitted: (string) {
                    //todo add a search view
                    debugPrint(searchText.text);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          _widgetOptions[_selectedindex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded), label: "chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_rounded), label: "GPT"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_rounded), label: "camera"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_suggest_rounded), label: "settings"),
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
