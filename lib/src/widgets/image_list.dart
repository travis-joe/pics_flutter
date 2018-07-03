import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            child: Image.network(images[index].url),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)));
      },
    );
  }
}
