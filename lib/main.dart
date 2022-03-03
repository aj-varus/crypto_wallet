import 'package:crypto_wallet/ui/authentication.dart';
import 'package:crypto_wallet/ui/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Crypto Wallet",
              home: Authentication(),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Crypto Wallet",
              home: Authentication(),
            );
          }

          return const Loading();
        });
  }
}
