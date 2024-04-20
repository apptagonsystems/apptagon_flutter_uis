import 'package:flutter/material.dart';


class ChatReceiverWidget extends StatelessWidget {
  final String text;
  const ChatReceiverWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
   return Row(
      children: [
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade400.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          'https://www.whatsappimages.in/wp-content/uploads/2020/05/Stylish-Girls-13.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '  10:00 AM',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ],
    );
  }
}