class ArticalModel {
  final String? image;
  final String? tiltle;
  final String? subTitle;
  final String? url;

  ArticalModel({
    required this.image,
    required this.tiltle,
    required this.subTitle,
    required this.url,
  });
  factory ArticalModel.fromjson(Map<String, dynamic> json) {
    return ArticalModel(
      image: json['urlToImage'],
      tiltle: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}
