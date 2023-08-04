import 'package:cintona/model/entries_model.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EntriesWidget extends StatefulWidget {
  EntriesWidget({Key? key, required this.entriesModel}) : super(key: key);
  EntriesModel entriesModel;

  @override
  State<EntriesWidget> createState() => _EntriesWidgetState();
}

class _EntriesWidgetState extends State<EntriesWidget> {
  void launchURL(String _url) async {
    if (await canLaunch(_url)) {
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
        launchURL("${widget.entriesModel.link}");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.blackColor.withOpacity(0.5)),
          color: AppColors.newsItemWidgetSecondColor.withOpacity(0.7),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "${widget.entriesModel.description}",
                    textAlign: TextAlign.center,
                    softWrap: false,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  child: Icon(
                    Icons.arrow_right_alt_sharp,
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
