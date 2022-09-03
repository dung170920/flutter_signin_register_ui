import 'package:flutter/material.dart';
import 'package:flutter_teams_ui/constants.dart';
import 'package:flutter_teams_ui/pages/pages.dart';
import 'package:flutter_teams_ui/widgets/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: size.width * 0.8,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Image(
                        image:
                            AssetImage('assets/images/team_illustration.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Enterprise team\ncollaboration.',
                        style: kHeadline,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Bring together your files, your tools, project and people. Including a new mobile and desktop application.',
                        style: kBodyText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyTextButton(
                            bgColor: Colors.white,
                            textColor: Colors.black87,
                            text: 'Register',
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const RegisterPage())))),
                      ),
                      Expanded(
                        child: MyTextButton(
                            bgColor: Colors.transparent,
                            textColor: Colors.white,
                            text: 'Sign in',
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SigninPage())))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
