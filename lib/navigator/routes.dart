import 'package:cintona/bloc/news_bloc/news_bloc.dart';
import 'package:cintona/model/news_model.dart';
import 'package:cintona/repo/all_news_repo.dart';
import 'package:cintona/ui/home/home_screen.dart';
import 'package:cintona/ui/home/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CRoutes {
  // static const memberMoreAboutUrl = MemberMoreAbout.memberMoreAboutUrl;

  static Map<String, WidgetBuilder> generateRoute(
      BuildContext context, int index, RouteSettings settings) {
    Map<int, Widget> routeName = {
      0: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AllNewsBloc(
              repo: AllNewsImpl(),
            ),
          ),
          // BlocProvider(
          //   create: (context) => AllOfferBloc(
          //     allOfferRepo: AllOfferRepoImpl(),
          //   ),
          // ),
        ],
        child: HomeScreen(),
      ),
    };
    return {
      HomeScreen.homeScreen: (context) => routeName[index]!,
      NewsDetailsScreen.newsDetailScreen: (context) => routeName[index]!
    };
  }

  static Route<dynamic> generateGlobalRoute(RouteSettings settings) {
    switch (settings.name) {
      case NewsDetailsScreen.newsDetailScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AllNewsBloc(repo: AllNewsImpl()),
            child: NewsDetailsScreen(articles: Articles()),
          ),
          settings: settings,
        );
      // case LoginPage.loginPageUrl:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => LoginBloc(),
      //             child: LoginPage(),
      //           ),
      //       settings: settings);

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
