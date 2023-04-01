import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListMessagesView extends StatelessWidget {
  const ListMessagesView({
    super.key,
    required this.image,
    required this.contactName,
    required this.lastMassages,
  });

  final String image;
  final String contactName;
  final String lastMassages;
//// need to change when connected to backed ;
  String recivedDate() {
    return DateFormat('jm').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contactName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      lastMassages,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Text(
                    '  ${recivedDate()}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
