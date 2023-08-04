import 'package:bloc/bloc.dart';
import 'package:cintona/bloc/entries_bloc/entries_event.dart';
import 'package:cintona/bloc/entries_bloc/entries_state.dart';
import 'package:cintona/model/entries_model.dart';
import 'package:cintona/repo/all_news_repo.dart';

class EntriesBloc extends Bloc<EntriesEvent, EntriesState> {
  AllNewsRepo repo;

  EntriesBloc({required this.repo}) : super(EntriesInitialState()) {
    on<EntriesEvent>(_onEntriesEvent);
  }
  _onEntriesEvent(EntriesEvent event, Emitter<EntriesState> emit) async {
    try {
      emit(EntriesLoadingState());
      List<EntriesModel> aData = (await repo.getEntriesData()).cast<EntriesModel>();

      if (aData.isEmpty) {
        emit(NoEntriesState());
      } else {
        emit(EntriesLoadedStete(Entrieslist: aData));
      }
    } catch (e) {
      print(e);
      emit(EntriesErrorState(msg: e.toString()));
    }
  }
  
}
