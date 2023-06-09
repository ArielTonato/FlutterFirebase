import 'package:firebase_crud/pages/add_name_page.dart';
import 'package:firebase_crud/pages/edit_name_page.dart';
import 'package:firebase_crud/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'services_firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      initialRoute: '/',
      routes: {
       '/':(context) => const Home(),
       '/add':(context) => const AddNamePage(),
       '/edit': (context) => const EditNamePage()
      },
    );
  }
}


