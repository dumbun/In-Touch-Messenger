import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Chatbar extends StatefulWidget {
  const Chatbar({super.key});

  @override
  State<Chatbar> createState() => _ChatbarState();
}

class _ChatbarState extends State<Chatbar> {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Chats",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit_document),
              ),
              SizedBox(
                width: 20.0,
              ),
              AnimSearchBar(
                rtl: true,
                width: 200.0,
                textController: textController,
                onSuffixTap: () {
                  setState(() {});
                },
                onSubmitted: (String) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
