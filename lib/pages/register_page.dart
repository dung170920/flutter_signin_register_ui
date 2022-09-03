import 'package:flutter/material.dart';
import 'package:flutter_teams_ui/constants.dart';
import 'package:flutter_teams_ui/pages/pages.dart';
import 'package:flutter_teams_ui/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                            title: 'Register',
                            subTitle: 'Create new account to get started',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const MyTextField(
                            hintText: 'Name',
                            type: TextInputType.text,
                            action: TextInputAction.next,
                          ),
                          const MyTextField(
                            hintText: 'Email',
                            type: TextInputType.emailAddress,
                            action: TextInputAction.next,
                          ),
                          const MyTextField(
                            hintText: 'Phone',
                            type: TextInputType.phone,
                            action: TextInputAction.next,
                          ),
                          MyTextPassword(
                            isPasswordVisible: isPasswordVisible,
                            hintText: 'Password',
                            type: TextInputType.text,
                            action: TextInputAction.next,
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
                                builder: (context) => const SigninPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign In',
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
                      text: 'Register',
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
