import 'package:flutter/material.dart';
import 'constant.dart';
import 'loginscreen.dart';
import 'registration.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome Screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              color: kColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/bothscreen.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const SizedBox(
                  height: 100,
                ),
                  Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child:AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Welcome',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 300),
                      ),
                    ],
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.loginId);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: kColor,
                      child: const ListTile(
                        title: Text(
                          'Login',
                          style: kText3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Registraion.registraionid);

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: kColor,
                      child: const ListTile(
                        title: Text(
                          'Registration',
                          style: kText3,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
