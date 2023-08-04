import 'package:cintona/model/news_model.dart';
import 'package:cintona/model/task_model.dart';

abstract class TaskState {}

class TaskInitialState extends TaskState {
  List<Object?> get props => [];
}

class TaskNoInternateState extends TaskState {
  List<Object?> get props => [];
}

class TaskLoadingState extends TaskState {
  List<Object?> get props => [];
}

class TaskLoadedStete extends TaskState {
  List<TaskModel> Tasklist;
  bool hasReachedMax;

  TaskLoadedStete({this.hasReachedMax = true, required this.Tasklist});
  @override
  List<Object?> get props => [
        this.Tasklist,
      ];
}

class NoTaskState extends TaskState {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "NO User Data Available";
  }
}

class TaskErrorState extends TaskState {
  final String msg;
  TaskErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];
  @override
  String toString() {
    return msg;
  }
}

class AllDataLoadedState extends TaskState {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}
