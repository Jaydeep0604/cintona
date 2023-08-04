import 'package:cintona/model/message_model.dart';
import 'package:equatable/equatable.dart';

abstract class MessageEvent extends Equatable {}

class fetchMessageEvent extends MessageEvent {
  MessagePostModel messagePostModel;
  fetchMessageEvent({required this.messagePostModel});
  @override
  List<Object?> get props => [messagePostModel];
}
