import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'signinsignup.dart';
import 'loginscreen.dart';
import 'registration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'mainscreen.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      initialRoute:LoginScreen.loginId,
      routes: {
        MainScreen.id:(context)=>const MainScreen(),
        Registraion.registraionid:(context)=>const Registraion(),
        LoginScreen.loginId:(context)=>const LoginScreen(),
        WelcomeScreen.id:(context)=>const WelcomeScreen(),
        HomeScreen.id:(context)=>const HomeScreen(),
      },
    );
  }
}
