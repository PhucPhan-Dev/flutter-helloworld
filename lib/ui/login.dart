import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/constants/colors.dart';
import 'package:hello_world/constants/text_styles.dart';
import 'package:hello_world/models/userLogin.dart';
import 'package:hello_world/ui/registration.dart';
import 'package:hello_world/widgets/button_widget.dart';
import 'package:hello_world/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _disabled = true;

  void toggleButton() {
    if (emailController.text != '' && passwordController.text != '') {
      setState(() {
        _disabled = false;
      });
    } else {
      setState(() {
        _disabled = true;
      });
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
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
                TextFieldWidget(
                  textController: emailController,
                  hint: 'Email',
                  padding: const EdgeInsets.only(top: 52.0),
                  onChanged: (value) => toggleButton(),
                ),
                TextFieldWidget(
                  textController: passwordController,
                  hint: "Password",
                  padding: const EdgeInsets.only(top: 32.0),
                  onChanged: (value) => toggleButton(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: ButtonWidget(
                    textButton: "Forgot Password",
                    typeBtn: Fruit.text,
                  ),
                ),
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
            child: ButtonWidget(
              textButton: "Sign In",
              disabled: _disabled,
              onPressed: () {
                Get.put(UserLogin()).updateUserLogin(
                  email: emailController.text,
                  password: passwordController.text,
                );
                Get.to(const RegistrationScreen());
              },
            ),
          ),
        )
      ],
    );
  }
}
