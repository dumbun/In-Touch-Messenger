import 'package:flutter/material.dart';
import '../Modules/getresponse.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();
  String _chatResponse = 'HELLO';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              _chatResponse,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        TextField(
          controller: _textEditingController,
          decoration: const InputDecoration(
            hintText: 'Enter your message',
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final response = await getChatResponse(_textEditingController.text);
            setState(() {
              _chatResponse = response;
              _textEditingController.clear();
            });
          },
          child: const Text('Send'),
        ),
      ],
    );
  }
}
