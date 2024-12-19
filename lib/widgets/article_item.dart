import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/cached_network_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchTheUrl(articleModel.url);
      },
      child: Column(
        spacing: 10,
        children: [
          AspectRatio(
            aspectRatio: 2.5,
            child: CachedNetworkImageWidget(articleModel: articleModel),
          ),
          Text(
            articleModel.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(articleModel.subTitle!,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, color: Colors.grey))
        ],
      ),
    );
  }

  Future<void> launchTheUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
