import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Welcome to',
                  style: AppTextStyles.header,
                ),
                const Text(
                  'utu Partner!',
                  style: AppTextStyles.headerBold,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Create a password for your store account to get started.',
                    style: AppTextStyles.description,
                    textAlign: TextAlign.center,
                  ),
                ),
                const TextFieldWidget(
                    hint: 'Email', padding: EdgeInsets.only(top: 52.0)),
                const TextFieldWidget(
                  hint: "OTP",
                  padding: EdgeInsets.only(top: 35.0),
                ),
                const Text(
                  'This was the XX digit code one time password sent to your email by utu.',
                  style: AppTextStyles.description,
                  textAlign: TextAlign.center,
                ),
                const TextFieldWidget(
                    hint: 'New Password', padding: EdgeInsets.only(top: 35.0)),
                const TextFieldWidget(
                    hint: 'Confirm New Password', padding: EdgeInsets.only(top: 35.0)),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    'Already registered?',
                    style: AppTextStyles.description,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ButtonWidget(
                    textButton: "Sign In",
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
            child: const ButtonWidget(textButton: "Next", disabled: true,),
          ),
        )
      ],
    );
  }
}
