import 'package:app_fluterando/home_page.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  //const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light, //if
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const Login_page(),
            '/home': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
