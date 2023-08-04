import 'package:cintona/bloc/news_bloc/news_bloc.dart';
import 'package:cintona/navigator/routes.dart';
import 'package:cintona/repo/all_news_repo.dart';
import 'package:cintona/ui/home/home_screen.dart';
import 'package:cintona/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AllNewsBloc(repo: AllNewsImpl()),
        child: HomeScreen(),
      ),
      onGenerateRoute: CRoutes.generateGlobalRoute,
    );
  }
}
