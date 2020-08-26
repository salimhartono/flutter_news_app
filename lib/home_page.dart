import 'package:flutter/material.dart';
import 'package:flutternewsapp/helper/data_category.dart';
import 'package:flutternewsapp/helper/data_request.dart';
import 'package:flutternewsapp/models/category.dart';
import 'package:flutternewsapp/news_page.dart';

import 'helper/my_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  News _news = News();
  List<Category> _category = List<Category>();

  @override
  void initState() {
    super.initState();
    _category = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: myAppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: _news.getNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return NewsPage(snapshot.data, _category);
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Center(
                child: Text("Error"),
              );
            }
          },
        ),
      ),
    );
  }
}
