import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import './models/image_model.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;

  void fetchImage() async {
    counter++;
    var res = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    print(res);
    var imageModel = ImageModel.fromJson(json.decode(res.body));
  }

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.clear),
      ),
      appBar: AppBar(
        title: Text('Let\'s see some images'),
      ),
    ));
  }
}
