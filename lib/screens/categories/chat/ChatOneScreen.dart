import 'package:apptagon_flutter_uis/screens/categories/chat/widgets/ChatReceiverWidget.dart';
import 'package:apptagon_flutter_uis/screens/categories/chat/widgets/ChatSenderWidget.dart';
import 'package:flutter/material.dart';

class ChatOneScreen extends StatelessWidget {
  const ChatOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          //centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 18,
            ),
          ),
          title: const Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://1.bp.blogspot.com/-7dX-qt6DcXU/XmDjUmbzjPI/AAAAAAAAPOg/xizFN_evzAEZoD2plZKEmYgciaZZBj3vACLcBGAsYHQ/s1600/Cute%2BGirl%2BDP%2BImages%2B%252813%2529.jpg'),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Priyanka',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.call, color: Colors.black),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.video_call, color: Colors.black),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              const ChatSenderWidget(text: 'hello bro, how are you?'),
              const SizedBox(
                height: 10,
              ),
              const ChatReceiverWidget(
                  text: 'What do you want to ask about our project?'),
              const SizedBox(
                height: 10,
              ),
              const ChatSenderWidget(
                  text: 'What do you want to ask about our project?'),
              const SizedBox(
                height: 10,
              ),
              const ChatReceiverWidget(
                  text: 'What do you want to ask about our project?'),
              const SizedBox(
                height: 10,
              ),
              const ChatSenderWidget(text: 'how is the project progress?'),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue.shade50,
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightBlue.shade100),
                            child: const Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Send Message',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.mic,
                            color: Colors.black,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.send_sharp),
                ],
              )
            ],
          ),
        ));
  }

  //
}
