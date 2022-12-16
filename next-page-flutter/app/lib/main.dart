import 'package:app/member/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_bottom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.dark
          )
      ),
      home: CustomBottomAppbar(),
      routes: {
        "sign-in": (context) => SignInScreen(),
      }
    );
  }
}