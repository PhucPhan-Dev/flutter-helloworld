import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/ui/login.dart';

import 'constants/assets.dart';

class MainLayout extends StatelessWidget {
  final Widget? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.backgroundApp), fit: BoxFit.fill),
      ),
      child: children,
    );
  }

  const MainLayout({Key? key, this.children}) : super(key: key);
}

void main() {
  runApp(const MaterialApp(
    title: 'Shopping App',
    theme: ThemeData(
      textTheme: GoogleFonts.notoSansTextTheme(),
    ),
    home: Scaffold(
      body: MainLayout(children: LoginScreen()),
    ),
  ));
}
