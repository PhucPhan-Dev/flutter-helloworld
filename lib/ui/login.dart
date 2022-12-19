import 'package:flutter/material.dart';
import 'package:hello_world/constants/text_styles.dart';
import 'package:hello_world/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'Welcome back to',
            style: TextStyles.header,
          ),
          const Text(
            'utu Partner!',
            style: TextStyles.headerBold,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              'Log in below',
              style: TextStyles.description,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 52.0),
            child: TextFieldWidget(
              hint: 'Email',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32.0),
            child: TextFieldWidget(
              hint: "Password",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32.0),
            child: Text("Forgot Password", style: TextStyles.descriptionBold,),
          ),
        ],
      ),
    );
  }
}
