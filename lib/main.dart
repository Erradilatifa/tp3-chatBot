
import 'package:chatbot_gpt/bloc/chat.bot.bolc..dart';
import 'package:chatbot_gpt/chat.bot.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';


import 'home.page.dart';


Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[
          BlocProvider(create:(context)=>ChatBotBloc())
        ],
        child:RootView(),
    );
  }
}
class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        indicatorColor: Colors.white,
      ),
      routes: {
        "/chat": (context) => ChatBotPage(),
      },
      home:HomePage(),
    );
  }
}

