import 'package:flutter/material.dart';
import 'constant.dart';
import 'signinsignup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'Home Screen';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 800,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage('assets/homemarvel.jpg'),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image(
                      image: AssetImage('assets/marvel2.png'),

                    ),
                  ),
                  const Text(
                    'Heroes aren\'t Born.',
                    style: kText,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'They\'re Built.',
                    style: kText,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Buy Marvel\'s Movie Ticket,Comics and Watch TV',
                    style: kText2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, WelcomeScreen.id);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 12, right: 12),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(blurRadius: 20.0, offset: Offset(0, 5)),
                        ],
                        color: kColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'Lets go',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
