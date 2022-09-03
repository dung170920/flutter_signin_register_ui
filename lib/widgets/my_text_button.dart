import 'package:flutter/material.dart';
import 'package:flutter_teams_ui/constants.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.bgColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final Color bgColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.transparent,
          ),
        ),
        child: Text(
          text,
          style: kButtonText.copyWith(color: textColor),
        ),
      ),
    );
  }
}
