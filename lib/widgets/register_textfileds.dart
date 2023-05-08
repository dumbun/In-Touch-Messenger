import 'package:flutter/material.dart';

class RegisterTextfileds extends StatelessWidget {
  const RegisterTextfileds({
    super.key,
    required this.inputController,
    required this.label,
    required this.keybordType,
    required this.obscureText,
  });
  final TextEditingController inputController;
  final String label;
  final TextInputType keybordType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        autocorrect: false,
        controller: inputController,
        style: const TextStyle(fontSize: 25),
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(
            label,
          ),
        ),
        keyboardType: keybordType,
      ),
    );
  }
}
