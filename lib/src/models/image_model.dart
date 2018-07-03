class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> j) {
    id = j['id'];
    url = j['url'];
    title = j['title'];
  }
}
