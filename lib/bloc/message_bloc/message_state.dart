import 'package:cintona/model/message_model.dart';
import 'package:cintona/model/news_model.dart';

abstract class MessageState {}

class MessageInitialState extends MessageState {
  List<Object?> get props => [];
}

class MessageNoInternateState extends MessageState {
  List<Object?> get props => [];
}

class MessageLoadingState extends MessageState {
  List<Object?> get props => [];
}

class MessageLoadedStete extends MessageState {
  List<MessageModel> Messagelist;
  bool hasReachedMax;

  MessageLoadedStete({this.hasReachedMax = true, required this.Messagelist});
  @override
  List<Object?> get props => [
        this.Messagelist,
      ];
}

class NoMessageState extends MessageState {
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    return "NO User Data Available";
  }
}

class MessageErrorState extends MessageState {
  final String msg;
  MessageErrorState({required this.msg});
  @override
  List<Object?> get props => [this.msg];
  @override
  String toString() {
    return msg;
  }
}

class AllDataLoadedState extends MessageState {
  Articles articles;

  AllDataLoadedState({required this.articles});
  @override
  List<Object?> get props => [
        this.articles,
      ];
}
