import 'package:flutter/material.dart';

class ElevatedButtonWithIconWidget extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color buttonTextColor;
  final double buttonTextFont;
  final double borderRadius;
  final double buttonHeight;
  final double buttonWidth;
  final IconData iconData;
  final VoidCallback onPressed;

  const ElevatedButtonWithIconWidget({
    Key? key,
    required this.backgroundColor,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.iconData,
    required this.onPressed,
    this.borderRadius = 0,
    this.buttonTextFont = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: backgroundColor,
        fixedSize: Size(
          MediaQuery.of(context).size.width,
          buttonHeight,
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor, fontSize: buttonTextFont),
      ),
      icon: Icon(iconData),
    );
  }
}
