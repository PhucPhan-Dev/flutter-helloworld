import 'package:flutter/material.dart';
import 'package:hello_world/constants/colors.dart';
import 'package:hello_world/constants/text_styles.dart';
import 'package:hello_world/widgets/button_widget.dart';
import 'package:hello_world/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Welcome back to',
                  style: AppTextStyles.header,
                ),
                const Text(
                  'utu Partner!',
                  style: AppTextStyles.headerBold,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Log in below',
                    style: AppTextStyles.description,
                  ),
                ),
                const TextFieldWidget(
                    hint: 'Email', padding: EdgeInsets.only(top: 52.0)),
                const TextFieldWidget(
                  hint: "Password",
                  padding: EdgeInsets.only(top: 32.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: ButtonWidget(
                    textButton: "Forgot Password",
                    typeBtn: Fruit.text,
                  ),
                ),
                const ButtonWidget(
                  textButton: "Sign In",
                  typeBtn: Fruit.outline,
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: ButtonWidget(
                    textButton: "Sign In",
                    typeBtn: Fruit.icon,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.whiteSmoke,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                    color: AppColors.shadowButtonWrapper,
                    spreadRadius: 0,
                    blurRadius: 24,
                    offset: const Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: const ButtonWidget(textButton: "Sign In"),
          ),
        )
      ],
    );
  }
}
