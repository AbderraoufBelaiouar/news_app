class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  const ArticleModel( 
      {required this.url,required this.image, required this.title, required this.subTitle});
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'] ??
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd8LWlb8l34MXvr3BonwEYsd11lw1QKQVEiQ&s',
      title: json['title'],
      subTitle: json['description'] ?? '',
      url: json['url'],
    );
  }
}
