// import 'dart:io';

// import 'package:bloc/bloc.dart';
// import 'package:cintona/bloc/all_data_bloc/all_data_event.dart';
// import 'package:cintona/bloc/all_data_bloc/all_data_state.dart';
// import 'package:cintona/model/news_model.dart';

// class AllDataBloc extends Bloc<AllDataEvent, AllDataStates> {
//   AllsDataRepo repo;
//   AllDataBloc({required this.repo}) : super(AllDataInitialState()) {
//     on<FetchAlldataEvent>(_onFetchAllDataEvent);
//   }

//   _onFetchAllDataEvent(
//       FetchAlldataEvent event, Emitter<AllDataStates> emit) async {
//     try {
//       emit(AllDataLoadingState());
//       Articles articles = (await repo.getAllDataModel(event.artistId)) as Articles;

//       emit(AllDataLoadedState(articles: articles));
//     } on SocketException {
//       emit(AllDataNoInternetState());
//     } catch (e) {
//       emit(AllDataErrorState(msg: e.toString()));
//       print(e.toString());
//     }
//   }
// }
