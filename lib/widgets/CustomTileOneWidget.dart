import 'package:apptagon_flutter_uis/utils/AppFunctions.dart';
import 'package:flutter/material.dart';

class CustomTileOneWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  final bool isBorderLess;
  final double padding;
  final int subTitleMaxLine;
  final double subTitleFontSize;
  const CustomTileOneWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.isBorderLess = false,
    this.padding = 8,
    this.subTitleMaxLine = 1,
    this.subTitleFontSize = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: isBorderLess ? Colors.white : Colors.grey[300]!,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppFunctions.returnTextWithNullValue(
                        data: title, nullText: "N/A"),
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    AppFunctions.returnTextWithNullValue(
                        data: subTitle, nullText: "N/A"),
                    maxLines: subTitleMaxLine,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: subTitleFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
