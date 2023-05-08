import 'package:flutter/material.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onPressed,
  });
  final String title;
  final IconData icon;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: TextButton.icon(
          style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(color),
          ),
          onPressed: () {
            onPressed();
          },
          icon: Icon(
            icon,
            size: 30,
          ),
          label: Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
