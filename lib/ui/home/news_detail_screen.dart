import 'package:cintona/model/news_model.dart';
import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatefulWidget {
  NewsDetailsScreen({Key? key, required this.articles}) : super(key: key);
  static const newsDetailScreen = '/newsdetailscreen';
  // int? id;
  Articles articles;

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  // late AllNewsBloc allNewsBloc;
  // bool? allNewsLoded;
  // @override
  // void initState() {
  //   super.initState();
  //   allNewsBloc = context.read<AllNewsBloc>();
  //   // allNewsBloc.add(fetchAllNewsEvent());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          children: [
            Text("data"),
          ],
        ),
      ),
    ));
  }
}
