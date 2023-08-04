import 'package:cintona/model/population_model.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PopulationWidget extends StatefulWidget {
  PopulationWidget({Key? key, required this.populationModel}) : super(key: key);
  PopulationModel populationModel;

  @override
  State<PopulationWidget> createState() => _PopulationWidgetState();
}

class _PopulationWidgetState extends State<PopulationWidget> {
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
      // launchURL("${widget.populationModel.source?.annotations!.datasetLink}");
      },
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.blackColor.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Nation :",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${widget.populationModel.nation}",
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Year :",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${widget.populationModel.year}",
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Population :",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${widget.populationModel.population}",
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
