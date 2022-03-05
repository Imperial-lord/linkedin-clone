import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:linkedin_clone/screens/splash.dart';
import 'package:linkedin_clone/stores/chat_store.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'routes.dart';

late SharedPreferences sharedPreferences;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  sharedPreferences = await SharedPreferences.getInstance();
  await dotenv.load(fileName: "assets/config/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(create: (_) => LoginStore()),
        Provider<UserStore>(create: (_) => UserStore()),
        Provider<ChatStore>(create: (_) => ChatStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(brightness: Brightness.dark),
        home: const Splash(),
        routes: routes,
      ),
    );
  }
}
