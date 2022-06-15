import 'package:flutter/material.dart';
import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Text(
                    'ATLAS',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e386b),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyButton(
                color: Colors.yellow[900]!,
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, '/signin_screen');
                },
              ),
              MyButton(
                color: Colors.blue[800]!,
                title: 'register',
                onPressed: () {
                  Navigator.pushNamed(context, '/registration_screenn');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
