import 'package:auth/custom.dart';
import 'package:auth/view_page.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/11.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const custom(
                icon: Icons.person,
                R: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const custom(
                icon1: Icons.remove_red_eye,
                icon: Icons.lock,
                R: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Buttoms(
                    text: 'Log in ',
                    R: 50,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const View_page()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
