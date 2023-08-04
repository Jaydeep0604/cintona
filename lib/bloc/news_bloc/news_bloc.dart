import 'package:bloc/bloc.dart';
import 'package:cintona/bloc/news_bloc/news_event.dart';
import 'package:cintona/bloc/news_bloc/news_state.dart';
import 'package:cintona/model/news_model.dart';
import 'package:cintona/repo/all_news_repo.dart';

class AllNewsBloc extends Bloc<AllNewsEvent, AllNewsState> {
  AllNewsRepo repo;

  AllNewsBloc({required this.repo}) : super(AllNewsInitialState()) {
    on<AllNewsEvent>(_onAllNewsEvent);
  }
  _onAllNewsEvent(AllNewsEvent event, Emitter<AllNewsState> emit) async {
    try {
      emit(AllNewsLoadingState());
      List<Articles> aData = (await repo.getAllNewsData()).cast<Articles>();

      if (aData.isEmpty) {
        emit(NoAllNewsState());
      } else {
        emit(AllNewsLoadedStete(allNewslist: aData));
      }
    } catch (e) {
      print(e);
      emit(AllNewsErrorState(msg: e.toString()));
    }
  }
  
}
