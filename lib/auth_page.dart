import 'package:auth/custom.dart';
import 'package:auth/view_page.dart';
import 'package:flutter/material.dart';

class auth_pageview extends StatefulWidget {
  const auth_pageview({super.key});

  @override
  State<auth_pageview> createState() => _auth_pageviewState();
}

class _auth_pageviewState extends State<auth_pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/11.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Log in to your Account ',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const custom(
                    icon: Icons.person,
                    R: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const custom(
                    icon: Icons.email,
                    R: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const custom(
                    icon: Icons.lock,
                    icon1: Icons.remove_red_eye,
                    R: 25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Buttoms(
                      text: 'Register',
                      R: 25,
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const View_page()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If you have an account',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log in ',
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
