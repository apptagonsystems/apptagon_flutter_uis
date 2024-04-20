import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final IconData leadingIconData;
  final IconData trailingIconData;
  final Color iconColor;
  final Color textColor;
  final String title;
  final double padding;
  final Color backgroundColor;
  final Color borderColor;
  final Function() function;
  const CustomListTileWidget({
    Key? key,
    required this.leadingIconData,
    required this.trailingIconData,
    required this.iconColor,
    required this.textColor,
    required this.title,
    required this.function,
    this.backgroundColor = Colors.grey,
    this.borderColor = Colors.grey,
    this.padding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 1),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: iconColor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      leadingIconData,
                      color: iconColor,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    trailingIconData,
                    color: AppColors.kCustomDarkGreyColor,
                    size: 16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
