import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/firebase_options.dart';
import 'package:firebase_login/login.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
      },
    ),
  );
}
