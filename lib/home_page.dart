// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:app_fluterando/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          actions: const [CustomSwitch()],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //alinhamento
            children: [
              Text('Contador: $counter'),
              Container(height: 30),
              CustomSwitch(),
              Container(height: 30),
              CustomSwitch(),
              Container(height: 30),
              Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, //espaçametno
                  crossAxisAlignment: CrossAxisAlignment.center, //alinhamento
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                    ),
                  ]),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  //const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: ((value) {
          AppController.instance.changeTheme();
        }));
  }
}
