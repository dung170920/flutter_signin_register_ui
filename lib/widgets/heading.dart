import 'package:flutter/material.dart';
import 'package:flutter_teams_ui/constants.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kHeadline,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subTitle,
          style: kBodyText2,
        ),
      ],
    );
  }
}
