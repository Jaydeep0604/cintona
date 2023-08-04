import 'package:cintona/model/news_model.dart';
import 'package:equatable/equatable.dart';

abstract class AllDataStates extends Equatable {}

class AllDataNoInternetState extends AllDataStates {
  @override
  List<Object?> get props => [];
}

class AllDataInitialState extends AllDataStates {
  @override
  List<Object?> get props => [];
}

class AllDataLoadingState extends AllDataStates {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class AllDataLoadedState extends AllDataStates {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}

class NoAllDataState extends AllDataStates {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "No All Details Data Available";
  }
}

class AllDataErrorState extends AllDataStates {
  final String msg;

  AllDataErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];

  @override
  String toString() {
    return msg;
  }
}