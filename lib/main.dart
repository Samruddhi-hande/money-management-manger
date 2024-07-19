import 'dart:html';

import 'package:expense/pages/splash.dart';
import 'package:expense/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // Platform.isAndroid?
  await Firebase.initializeApp(
    options:const FirebaseOptions(apiKey: "AIzaSyCE4NtGRejlwynGXNYSVq7OOQEolzeST78",
        appId: "1:974335681308:android:948d2f000647d5a6c5d0d9",
        messagingSenderId:" 974335681308", projectId: "wealthguard-6dd74")
  );
  FirebaseFirestore.instance.settings =const Settings(
    persistenceEnabled: true,
  );
  await Hive.initFlutter();
  await Hive.openBox('money');



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses',
      theme: myTheme,
      home: const Splash(),
    );
  }
}
