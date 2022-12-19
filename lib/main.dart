import 'package:flutter/material.dart';
import 'package:hello_world/ui/login.dart';

import 'constants/assets.dart';

class MainLayout extends StatelessWidget {
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.backgroundApp), fit: BoxFit.fill),
      ),
      child: SafeArea(child: children),
    );
  }

  const MainLayout({Key? key, required this.children}) : super(key: key);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Utu';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: const Scaffold(
        body: MainLayout(children: LoginScreen()),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
