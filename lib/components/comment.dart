import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String text;
  final String user;
  final String time;

  const Comment({
    Key? key,
    required this.text,
    required this.user,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // comment
          Text(text),
          const SizedBox(height: 5),
          // user, time
          Row(
            children: [
              Text(
                user,
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
              Text(
                " o ",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
