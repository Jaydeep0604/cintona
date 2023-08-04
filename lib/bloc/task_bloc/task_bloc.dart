import 'package:bloc/bloc.dart';
import 'package:cintona/bloc/task_bloc/task_event.dart';
import 'package:cintona/bloc/task_bloc/task_state.dart';
import 'package:cintona/repo/task_repo.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskRepo repo = TaskRepoImpl();
  // UserRepo userRepo = UserRepoImpl();
  TaskBloc() : super(TaskInitialState()) {
    on<fetchTaskEvent>(_onFetchTask);
    // on<InitUserEvent>(_onInitUser);
  }
  _onFetchTask(fetchTaskEvent event, Emitter<TaskState> emit) async {
    try {
      emit(TaskLoadingState());
      dynamic jsonData;
      jsonData = await repo.taskPost(event.taskPostModel);
      // dynamic data = jsonData['user'];
      // print(data);
      // emit(TaskLoadingState());
      // dynamic data = await repo.Task(event.authModel);

      // bool isSessionOpen = await cHiveStore.openSession(
      //   UserAccessData(
      //     userName: jsonData['username'],
      //     email: jsonData['email'],
      //     image: jsonData['image'],
      //     token: jsonData['token'],
      //     bio: jsonData['bio'],
      //   ),
      // );

      // await downloadStore.storeUserAccessData(
      //   UserAccessData(
      //     countryCode: data['country_code'],
      //     firstName: data['first_name'],
      //     lastName: data['last_name'],
      //     email: data['email'],
      //     dob: data['dob'],
      //     accessToken: data['accesstoken'],
      //     userId: data['user_id'].toString(),
      //     mobile: data['mobile_no'],
      //     TaskType: data['Task_type'],
      //   ),
      // );

      // if (isSessionOpen) {
      //   add(InitUserEvent(msg: jsonData['user'].toString()));
      // } else {
      //   emit(
      //     TaskErrorState(
      //       msg: "Cannot initialize the user",
      //     ),
      //   );
      // }
      emit(
        TaskLoadedStete(
          Tasklist: jsonData["user"],
        ),
      );
    } catch (e) {
      emit(
        TaskErrorState(
          msg: e.toString(),
        ),
      );
    }
  }
}
