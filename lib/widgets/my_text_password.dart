import 'package:flutter/material.dart';
import 'package:flutter_teams_ui/constants.dart';

class MyTextPassword extends StatelessWidget {
  const MyTextPassword({
    Key? key,
    required this.hintText,
    required this.type,
    required this.action,
    required this.onPressed,
    required this.isPasswordVisible,
  }) : super(key: key);

  final String hintText;
  final TextInputType type;
  final TextInputAction action;
  final VoidCallback onPressed;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        keyboardType: type,
        textInputAction: action,
        cursorColor: Colors.white,
        style: kBodyText.copyWith(color: Colors.white),
        obscureText: !isPasswordVisible,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: onPressed,
              icon: Icon(
                isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
