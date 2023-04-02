import 'package:flutter/material.dart';
import '../widgets/list_view.dart';

Widget messagesView(homeMessageslist) {
  return homeMessageslist.isEmpty
      ? Column(
          children: [
            const Text(
              "No Chats Found 😢",
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
      : Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 0.0,
                child: ListMessagesView(
                  image: homeMessageslist[index].image,
                  contactName: homeMessageslist[index].name,
                  lastMassages: homeMessageslist[index].lastMassages,
                ),
              );
            },
            itemCount: homeMessageslist.length,
            addAutomaticKeepAlives: false,
          ),
        );
}
