import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = 'searchPage';
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
