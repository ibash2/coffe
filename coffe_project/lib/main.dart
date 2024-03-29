import 'package:coffe_project/screens/home_page.dart';
import 'package:coffe_project/screens/loginin.dart';
import 'package:coffe_project/screens/product_page.dart';
import 'package:coffe_project/screens/sigin_page.dart';
import 'package:coffe_project/screens/signup_page.dart';
import 'package:coffe_project/screens/test.dart';
import 'package:coffe_project/screens/verify_email_screen.dart';
import 'package:coffe_project/services/data_base.dart';
import 'package:coffe_project/services/firebase_streem.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(MyApp());

}



class MyApp extends StatelessWidget {

  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home':(context) => const Home_page(),
        '/login': (context) =>  signin_menu(),
        '/signup': (context) => const signup_menu(),
        '/loginin':(context) => const Loginin()
        
      },
      initialRoute: '/',
    );
  }
}