import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/home_page_ulti/posts.dart';
import 'package:instagram_ui/home_page_ulti/story_bar.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> refreshing() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshing,
      child: SingleChildScrollView(
          child: Column(
        children: [StoryBar(), const Divider(), Posts()],
      )),
    );
  }
}
