import 'package:cintona/model/entries_model.dart';
import 'package:cintona/model/news_model.dart';

abstract class EntriesState {}

class EntriesInitialState extends EntriesState {
  List<Object?> get props => [];
}

class EntriesNoInternateState extends EntriesState {
  List<Object?> get props => [];
}

class EntriesLoadingState extends EntriesState {
  List<Object?> get props => [];
}

class EntriesLoadedStete extends EntriesState {
  List<EntriesModel> Entrieslist;
  bool hasReachedMax;

  EntriesLoadedStete({this.hasReachedMax = true, required this.Entrieslist});
  @override
  List<Object?> get props => [
        this.Entrieslist,
      ];
}

class NoEntriesState extends EntriesState {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "NO User Data Available";
  }
}

class EntriesErrorState extends EntriesState {
  final String msg;
  EntriesErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];
  @override
  String toString() {
    return msg;
  }
}

class AllDataLoadedState extends EntriesState {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}
