import 'package:flutter/material.dart';

class UserLiveWidget extends StatelessWidget {
  const UserLiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.2,
                    color: Colors.pink,
                  ),
                ),
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
              ),
              SizedBox(height: 6),
              Text(
                "fullName",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Visibility(
          visible: true,
          child: Positioned(
            right: 15,
            child: Container(
              padding: const EdgeInsets.only(
                left: 1,
                bottom: 1,
                right: 1,
              ),
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Live',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
