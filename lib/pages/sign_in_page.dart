import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_teams_ui/constants.dart';
import 'package:flutter_teams_ui/pages/pages.dart';
import 'package:flutter_teams_ui/widgets/widgets.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(42),
        child: MyAppBar(),
      ),
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Heading(
                            title: 'Welcome back.',
                            subTitle: "You've been missed!",
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const MyTextField(
                              hintText: 'Phone, email or username',
                              type: TextInputType.text,
                              action: TextInputAction.next),
                          MyTextPassword(
                            isPasswordVisible: isPasswordVisible,
                            hintText: 'Password',
                            type: TextInputType.text,
                            action: TextInputAction.done,
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont't have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
                            style: kBodyText.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      bgColor: Colors.white,
                      textColor: Colors.black87,
                      text: 'Sign In',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
