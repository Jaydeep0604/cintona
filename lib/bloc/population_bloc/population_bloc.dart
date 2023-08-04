import 'package:bloc/bloc.dart';
import 'package:cintona/bloc/population_bloc/population_event.dart';
import 'package:cintona/bloc/population_bloc/population_state.dart';
import 'package:cintona/model/population_model.dart';
import 'package:cintona/repo/all_news_repo.dart';

class PopulationBloc extends Bloc<PopulationEvent, PopulationState> {
  AllNewsRepo repo;

  PopulationBloc({required this.repo}) : super(PopulationInitialState()) {
    on<PopulationEvent>(_onPopulationEvent);
  }
  _onPopulationEvent(PopulationEvent event, Emitter<PopulationState> emit) async {
    try {
      emit(PopulationLoadingState());
      List<PopulationModel> aData = (await repo.getPopulationData()).cast<PopulationModel>();

      if (aData.isEmpty) {
        emit(NoPopulationState());
      } else {
        emit(PopulationLoadedStete(Populationlist: aData));
      }
    } catch (e) {
      print(e);
      emit(PopulationErrorState(msg: e.toString()));
    }
  }
  
}
