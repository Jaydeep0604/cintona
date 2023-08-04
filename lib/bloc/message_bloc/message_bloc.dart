import 'package:bloc/bloc.dart';
import 'package:cintona/bloc/message_bloc/message_event.dart';
import 'package:cintona/bloc/message_bloc/message_state.dart';
import 'package:cintona/repo/message_repo.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  // MessageRepo repo = MessageRepoImpl();
  // UserRepo userRepo = UserRepoImpl();
  MessageBloc() : super(MessageInitialState()) {
    on<fetchMessageEvent>(_onFetchMessage);
    // on<InitUserEvent>(_onInitUser);
  }
  _onFetchMessage(fetchMessageEvent event, Emitter<MessageState> emit) async {
    try {
      emit(MessageLoadingState());
      dynamic jsonData;
     // jsonData = await repo.messagePost(event.messagePostModel);
      // dynamic data = jsonData['user'];
      // print(data);
      // emit(MessageLoadingState());
      // dynamic data = await repo.Message(event.authModel);

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
      //     MessageType: data['Message_type'],
      //   ),
      // );

      // if (isSessionOpen) {
      //   add(InitUserEvent(msg: jsonData['user'].toString()));
      // } else {
      //   emit(
      //     MessageErrorState(
      //       msg: "Cannot initialize the user",
      //     ),
      //   );
      // }
      emit(
        MessageLoadedStete(
          Messagelist: jsonData["user"],
        ),
      );
    } catch (e) {
      emit(
        MessageErrorState(
          msg: e.toString(),
        ),
      );
    }
  }
}
