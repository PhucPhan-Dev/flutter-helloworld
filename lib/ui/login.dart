import 'package:flutter/material.dart';
import 'package:hello_world/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text('Welcome back to'),
          const Text('utu Partner!'),
          const Text('Log in below'),
          TextFieldWidget(
            textController: _userEmailController,
            hint: 'Email',
          ),
          TextFieldWidget(
            textController: _passwordController,
            hint: "Password",
          ),
          const Text("Forgot Password"),
        ],
      ),
    );
  }
}
