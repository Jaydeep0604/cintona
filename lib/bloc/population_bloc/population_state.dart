import 'package:cintona/model/news_model.dart';
import 'package:cintona/model/population_model.dart';

abstract class PopulationState {}

class PopulationInitialState extends PopulationState {
  List<Object?> get props => [];
}

class PopulationNoInternateState extends PopulationState {
  List<Object?> get props => [];
}

class PopulationLoadingState extends PopulationState {
  List<Object?> get props => [];
}

class PopulationLoadedStete extends PopulationState {
  List<PopulationModel> Populationlist;
  bool hasReachedMax;

  PopulationLoadedStete(
      {this.hasReachedMax = true, required this.Populationlist});
  @override
  List<Object?> get props => [
        this.Populationlist,
      ];
}

class NoPopulationState extends PopulationState {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "NO User Data Available";
  }
}

class PopulationErrorState extends PopulationState {
  final String msg;
  PopulationErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];
  @override
  String toString() {
    return msg;
  }
}

class AllDataLoadedState extends PopulationState {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}
