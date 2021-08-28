import 'package:chatproject/MainUi/exploreEventsPage.dart';
import 'package:chatproject/screens/chat_page.dart';
import 'package:chatproject/screens/kirish.dart';
import 'package:chatproject/screens/sign_in.dart';
import 'package:chatproject/screens/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'MainUi/PopularEventsPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FirebaseAuth _authUser = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      initialRoute:
          _authUser.currentUser != null ? 'chat_ekran' : 'kirish_ekran',
      routes: {
        'kirish_ekran': (context) => KirishEkrani(),
        'chat_ekran': (context) => ChatPage(),
        'sign_in': (context) => SignIn(),
        'sign_up': (context) => SignUp(),
        "mainPage" : (context) => ExploreEventsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> path = settings.name.toString().split("/");
        if (path[1] == "PopularEventsPage") {
          return MaterialPageRoute(
            builder: (context) => PopularEventsPage(
              int.parse(path[2]),
            ),
          );
        }
      },
      // home: KirishEkrani(),
    );
  }
}
