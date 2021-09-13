import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home_page.dart';
import 'package:instagram_ui/pages/search_page.dart';

class ToolBar extends StatefulWidget {
  const ToolBar({Key? key}) : super(key: key);

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Spacer(), // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
              Navigator.pushNamed(context, HomePage.routeName);
            },
            icon: Icon(
              Icons.home_outlined,
              color: currentPage == 0
                  ? const Color.fromRGBO(203, 73, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            iconSize: 30,
          ),
          // ignore: prefer_const_constructors
          Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
              Navigator.pushNamed(context, SearchPage.routeName);
            },
            icon: Icon(
              Icons.search,
              color: currentPage == 1
                  ? const Color.fromRGBO(203, 73, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            iconSize: 30,
          ),
          Spacer(), // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 2;
              });
            },
            icon: Icon(
              Icons.personal_video_rounded,
              color: currentPage == 2
                  ? const Color.fromRGBO(203, 73, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            iconSize: 30,
          ),
          Spacer(), // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 3;
              });
            },
            icon: Icon(
              Icons.favorite_border_outlined,
              color: currentPage == 3
                  ? const Color.fromRGBO(203, 73, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            iconSize: 30,
          ),
          Spacer(), // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {
              setState(() {
                currentPage = 4;
              });
            },
            icon: const Icon(Icons.account_circle_outlined),
            color: currentPage == 4
                ? const Color.fromRGBO(203, 73, 101, 1)
                : const Color.fromRGBO(40, 40, 40, 1),
            iconSize: 30,
          ),
          Spacer(), // ignore: prefer_const_constructors
        ],
      ),
    );
  }
}
