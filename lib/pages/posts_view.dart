import 'package:flutter/material.dart';
import 'package:evdekal/models/posts_models.dart';
import 'package:evdekal/services/posts_services.dart';
import 'dart:math';
class PostsView extends StatefulWidget {
  @override
  _PostsViewState createState() => _PostsViewState();
}
class _PostsViewState extends State<PostsView> {
  Future<List<Posts>> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evdekal Postları'),
      ),
      body: SafeArea(
        child: Center(
          child: FutureBuilder<List<Posts>>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Posts> data = snapshot.data;
                return ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Random random = new Random();
                    int colorCode = random.nextInt(10);
                    return Container(
                      color: Colors.amber[colorCode * 100],
                      child: Column(
                        children: [
                          Text("User ID: " +
                              data[index].userId.toString()),
                          Text("ID: " + data[index].id.toString()),
                          Text("Title: " + data[index].title),
                          Text("body: " + data[index].body),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}