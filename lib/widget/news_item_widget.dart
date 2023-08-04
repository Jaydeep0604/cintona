import 'package:cintona/model/news_model.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItemWidget extends StatefulWidget {
  NewsItemWidget({Key? key, required this.articles}) : super(key: key);
  // NewsModel? newsModel;
  Articles articles;

  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> {
  // late AllNewsBloc allNewsBloc;
  // @override
  // void initState() {
  //   allNewsBloc = context.read<AllNewsBloc>();
  //   allNewsBloc.add(fetchAllNewsEvent());
  // }

  void launchURL(String _url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(_url)) {
      // ignore: deprecated_member_use
      await launch(_url,
          forceSafariVC: true, forceWebView: true, enableJavaScript: true);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(
        //   context,
        //   NewsDetailsScreen.newsDetailScreen,
        //   arguments: {
        //     "author": widget.articles.author,
        //   },
        // );
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(
        //         builder: (context) => NewsDetailsScreen(
        //               articles: widget.articles,
        //             )),
        //     (route) => true);

        launchURL("${widget.articles.url}");
      },
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: AppColors.primaryColor
            border: Border.all(color: AppColors.primaryColor)),
        child: Stack(
          children: [
            if (widget.articles.urlToImage != null)
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${widget.articles.urlToImage}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            if (widget.articles.urlToImage == null)
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: AppColors.primaryColor.withOpacity(0.7),
                ),
                child: ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/icons/logo_w.png",
                      color: AppColors.primaryColor,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.newsItemWidgetSecondColor,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "${widget.articles.author ?? '--'}",
                            textAlign: TextAlign.center,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: AppColors.whiteColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
