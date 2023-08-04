import 'package:cintona/model/task_model.dart';
import 'package:equatable/equatable.dart';

abstract class TaskEvent extends Equatable {}

class fetchTaskEvent extends TaskEvent{
  TaskPostModel taskPostModel;
  fetchTaskEvent({required this.taskPostModel})  ;
  @override
  List<Object?> get props => [taskPostModel];
}