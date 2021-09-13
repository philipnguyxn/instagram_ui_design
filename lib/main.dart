import 'package:flutter/material.dart';
import 'package:instagram_ui/home_page_ulti/tool_bar.dart';
import 'pages/home_page.dart';
import 'pages/search_page.dart';
import 'home_page_ulti/tool_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromRGBO(32, 32, 32, 1)),
          color: Colors.white,
          elevation: 0,
        ),
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(color: Color.fromRGBO(32, 32, 32, 1)),
      ),
      home: const InstaHome(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        SearchPage.routeName: (context) => const SearchPage(),
      },
    );
  }
}

class InstaHome extends StatefulWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'assets/images/insta_logo.png',
            height: 50,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  size: 30,
                ))
          ]),
      body: const HomePage(),
      bottomNavigationBar: const ToolBar(),
    );
  }
}
