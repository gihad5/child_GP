import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'Screens/Srart.dart';
import 'Screens/forget.dart';
import 'Screens/login.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Start.id,
      routes: {
        Start.id: (context) => Start(),
        LogInScreen.id:(context)=>LogInScreen(),
        ForgetPassword.id:(context)=>ForgetPassword()
        
      },
    );
  }
}
