import 'package:app_fluterando/home_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_page extends StatefulWidget {
  const Login_page({super.key});
  @override
  State<Login_page> createState() => _Login_pageState();
}

// ignore: camel_case_types
class _Login_pageState extends State<Login_page> {
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();
  final emailed = GlobalKey<FormFieldState>();

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/login3.png'),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    key: emailed,
                    onChanged: (text) {
                      email = text;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Coloque o email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 10),
                  TextFormField(
                    onChanged: (text) {
                      password = text;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Coloque senha';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                      if (email == 'gabriel@gmail.com' && password == '123') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      } else {
                        // ignore: avoid_print
                        print('Login invalido');
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                  TextButton(
                      onPressed: () {
                        emailed.currentState?.validate();
                      },
                      child: const Text('Esqueceu sua senha ?')),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/backgroud.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(color: Colors.black.withOpacity(0.3)),
            _body(),
          ],
        ),
      ),
    );
  }
}
