import 'package:cintona/model/news_model.dart';

abstract class AllNewsState {}

class AllNewsInitialState extends AllNewsState {
  List<Object?> get props => [];
}

class AllNewsNoInternateState extends AllNewsState {
  List<Object?> get props => [];
}

class AllNewsLoadingState extends AllNewsState {
  List<Object?> get props => [];
}

class AllNewsLoadedStete extends AllNewsState {
  List<Articles> allNewslist;
  bool hasReachedMax;

  AllNewsLoadedStete({this.hasReachedMax = true, required this.allNewslist});
  @override
  List<Object?> get props => [
        this.allNewslist,
      ];
}

class NoAllNewsState extends AllNewsState {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "NO User Data Available";
  }
}

class AllNewsErrorState extends AllNewsState {
  final String msg;
  AllNewsErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];
  @override
  String toString() {
    return msg;
  }
}

class AllDataLoadedState extends AllNewsState {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}
