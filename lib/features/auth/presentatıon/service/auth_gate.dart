import 'package:chat_app_flutter/features/auth/presentat%C4%B1on/pages/home_page.dart';
import 'package:chat_app_flutter/features/auth/presentat%C4%B1on/pages/login_or_register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomePage();
            } else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}
