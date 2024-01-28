import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leo_app/screen/genderchoose.dart';
import 'package:leo_app/screen/getstartpage.dart';
import 'package:leo_app/screen/verifypage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GenderChoose(),
    );
  }
}
