import 'package:cintona/bloc/entries_bloc/entries_bloc.dart';
import 'package:cintona/bloc/news_bloc/news_bloc.dart';
import 'package:cintona/bloc/news_bloc/news_event.dart';
import 'package:cintona/bloc/news_bloc/news_state.dart';
import 'package:cintona/bloc/population_bloc/population_bloc.dart';
import 'package:cintona/repo/all_news_repo.dart';
import 'package:cintona/ui/entries_screen/entries_screen.dart';
import 'package:cintona/ui/population_screen/population_screen.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:cintona/widget/news_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const homeScreen = '/homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AllNewsBloc allNewsBloc;
  @override
  void initState() {
    allNewsBloc = context.read<AllNewsBloc>();
    allNewsBloc.add(fetchAllNewsEvent());
  }

  DateTime selectedDate = DateTime.now();

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2101));
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      // launchURL(widget.articles.url!);
    }
  }

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,

        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Events",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                    // padding: EdgeInsets.all(10),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Select Date",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) =>
                                    EntriesBloc(repo: AllNewsImpl()),
                                child: EntriesScreen(),
                              )));
                },
                child: Container(
                  padding: EdgeInsets.all(3),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    "assets/icons/logo_w.png",
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) =>
                                    PopulationBloc(repo: AllNewsImpl()),
                                child: PopulationScreen(),
                              )));
                },
                child: Container(
                  padding: EdgeInsets.all(3),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    "assets/icons/logo_w.png",
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SizedBox(
        child: BlocBuilder<AllNewsBloc, AllNewsState>(
          builder: (context, state) {
            if (state is AllNewsInitialState || state is AllNewsLoadingState) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ),
              );
            }
            if (state is AllNewsLoadedStete) {
              return Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: RefreshIndicator(
                  key: _refreshIndicatorKey,
                  color: Colors.black,
                  // backgroundColor: Colors.blue,
                  strokeWidth: 2.0,
                  onRefresh: () async {
                    // Replace this delay with the code to be executed during refresh
                    // and return a Future when code finishs execution.
                   await fetchAllNewsEvent();
                    return Future<void>.delayed(const Duration(seconds: 3));
                  },
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: state.allNewslist.length,
                    itemBuilder: (context, index) {
                      return NewsItemWidget(articles: state.allNewslist[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                  ),
                ),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
