// class MessageModel {
//   int? code;
//   List<Data>? data;
//   String? message;
//   int? totalMessage;

//   MessageModel({this.code, this.data, this.message, this.totalMessage});

//   MessageModel.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     message = json['message'];
//     totalMessage = json['total_message'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['message'] = this.message;
//     data['total_message'] = this.totalMessage;
//     return data;
//   }
// }

class MessageModel {
  int? id;
  Null? clearChatId;
  String? abuseId;
  String? blockId;
  Null? pintabId;
  Null? muteId;
  Null? mediaId;
  int? chatId;
  String? uniqueMessageId;
  int? groupId;
  String? chatWith;
  int? fromUserId;
  String? phoneNumber;
  Null? userContactName;
  String? userImage;
  int? toUserId;
  String? groupName;
  String? groupImage;
  String? tagName;
  String? languageId;
  int? createdBy;
  String? tmpId;
  String? chatText;
  String? chatMediaType;
  String? createdDate;
  String? newCreatedDate;
  String? isReadFlag;
  Null? archiveId;
  String? totalCount;
  String? totalSend;
  String? totalDelivered;
  String? totalRead;
  String? newReadFlag;
  int? unreadCount;
  String? groupCreatedDate;
  String? isGroupDeleted;
  String? isReportedUser;
  String? isBlockedUser;
  String? isMuted;
  String? isPin;
  String? isMediaVisibility;
  String? isArchive;
  String? blockedDate;
  String? reportedDate;
  String? otherBlockedDate;

  MessageModel(
      {this.id,
      this.clearChatId,
      this.abuseId,
      this.blockId,
      this.pintabId,
      this.muteId,
      this.mediaId,
      this.chatId,
      this.uniqueMessageId,
      this.groupId,
      this.chatWith,
      this.fromUserId,
      this.phoneNumber,
      this.userContactName,
      this.userImage,
      this.toUserId,
      this.groupName,
      this.groupImage,
      this.tagName,
      this.languageId,
      this.createdBy,
      this.tmpId,
      this.chatText,
      this.chatMediaType,
      this.createdDate,
      this.newCreatedDate,
      this.isReadFlag,
      this.archiveId,
      this.totalCount,
      this.totalSend,
      this.totalDelivered,
      this.totalRead,
      this.newReadFlag,
      this.unreadCount,
      this.groupCreatedDate,
      this.isGroupDeleted,
      this.isReportedUser,
      this.isBlockedUser,
      this.isMuted,
      this.isPin,
      this.isMediaVisibility,
      this.isArchive,
      this.blockedDate,
      this.reportedDate,
      this.otherBlockedDate});

  MessageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clearChatId = json['clear_chat_id'];
    abuseId = json['abuse_id'];
    blockId = json['block_id'];
    pintabId = json['pintab_id'];
    muteId = json['mute_id'];
    mediaId = json['media_id'];
    chatId = json['chat_id'];
    uniqueMessageId = json['unique_message_id'];
    groupId = json['group_id'];
    chatWith = json['chat_with'];
    fromUserId = json['from_user_id'];
    phoneNumber = json['phone_number'];
    userContactName = json['user_contact_name'];
    userImage = json['user_image'];
    toUserId = json['to_user_id'];
    groupName = json['group_name'];
    groupImage = json['group_image'];
    tagName = json['tag_name'];
    languageId = json['language_id'];
    createdBy = json['created_by'];
    tmpId = json['tmp_id'];
    chatText = json['chat_text'];
    chatMediaType = json['chat_media_type'];
    createdDate = json['created_date'];
    newCreatedDate = json['new_created_date'];
    isReadFlag = json['is_read_flag'];
    archiveId = json['archive_id'];
    totalCount = json['total_count'];
    totalSend = json['total_send'];
    totalDelivered = json['total_delivered'];
    totalRead = json['total_read'];
    newReadFlag = json['new_read_flag'];
    unreadCount = json['unread_count'];
    groupCreatedDate = json['group_created_date'];
    isGroupDeleted = json['is_group_deleted'];
    isReportedUser = json['is_reported_user'];
    isBlockedUser = json['is_blocked_user'];
    isMuted = json['is_muted'];
    isPin = json['is_pin'];
    isMediaVisibility = json['is_media_visibility'];
    isArchive = json['is_archive'];
    blockedDate = json['blocked_date'];
    reportedDate = json['reported_date'];
    otherBlockedDate = json['other_blocked_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clear_chat_id'] = this.clearChatId;
    data['abuse_id'] = this.abuseId;
    data['block_id'] = this.blockId;
    data['pintab_id'] = this.pintabId;
    data['mute_id'] = this.muteId;
    data['media_id'] = this.mediaId;
    data['chat_id'] = this.chatId;
    data['unique_message_id'] = this.uniqueMessageId;
    data['group_id'] = this.groupId;
    data['chat_with'] = this.chatWith;
    data['from_user_id'] = this.fromUserId;
    data['phone_number'] = this.phoneNumber;
    data['user_contact_name'] = this.userContactName;
    data['user_image'] = this.userImage;
    data['to_user_id'] = this.toUserId;
    data['group_name'] = this.groupName;
    data['group_image'] = this.groupImage;
    data['tag_name'] = this.tagName;
    data['language_id'] = this.languageId;
    data['created_by'] = this.createdBy;
    data['tmp_id'] = this.tmpId;
    data['chat_text'] = this.chatText;
    data['chat_media_type'] = this.chatMediaType;
    data['created_date'] = this.createdDate;
    data['new_created_date'] = this.newCreatedDate;
    data['is_read_flag'] = this.isReadFlag;
    data['archive_id'] = this.archiveId;
    data['total_count'] = this.totalCount;
    data['total_send'] = this.totalSend;
    data['total_delivered'] = this.totalDelivered;
    data['total_read'] = this.totalRead;
    data['new_read_flag'] = this.newReadFlag;
    data['unread_count'] = this.unreadCount;
    data['group_created_date'] = this.groupCreatedDate;
    data['is_group_deleted'] = this.isGroupDeleted;
    data['is_reported_user'] = this.isReportedUser;
    data['is_blocked_user'] = this.isBlockedUser;
    data['is_muted'] = this.isMuted;
    data['is_pin'] = this.isPin;
    data['is_media_visibility'] = this.isMediaVisibility;
    data['is_archive'] = this.isArchive;
    data['blocked_date'] = this.blockedDate;
    data['reported_date'] = this.reportedDate;
    data['other_blocked_date'] = this.otherBlockedDate;
    return data;
  }
}

class MessagePostModel {
  final String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjliZDcyNTlkNmJmMzAyNWI2YjkwZGRiZTBhZmE5ZTRiMDUwM2E4NGZhMzc2NTgyZDFkYmE4YTY4NGExMjc1MjgzNjNkNDU0YTczNDI2MGI3In0.eyJhdWQiOiIxIiwianRpIjoiOWJkNzI1OWQ2YmYzMDI1YjZiOTBkZGJlMGFmYTllNGIwNTAzYTg0ZmEzNzY1ODJkMWRiYThhNjg0YTEyNzUyODM2M2Q0NTRhNzM0MjYwYjciLCJpYXQiOjE2ODMxNzQ2ODYsIm5iZiI6MTY4MzE3NDY4NiwiZXhwIjoxNzE0Nzk3MDg2LCJzdWIiOiIxNzYiLCJzY29wZXMiOltdfQ.LAQMffNyIbFvtIV-Fyy1gr_VO0rXdq5myTx-ht2YJLSJMvb0oWameJ9XRx86kNIsixTHeRz88hiszlKvxZRNjtTGj7rGXjIqOAlqj1kKTbprPEcPpqEFD-j6FCPepzhHGKVPoIsJ2eJIjWOw-tZhD1B7xDaLOnTRi6x7stvBG-fm4CXKwkiNoVpEp0YPJ7LATB0KMd43KXResVhKrlBMnsuDBeMxClFxyoaRGPsq7npfRI0tbJHwcfVG8VQJJcig-bQn-N7rIifCitQjUTvnSCz5P97ISqZAyXFvE1DIs9EM1gIknx0h8w9VR09JhZynfbJyUgZ9mCozpCe_LjmSjGDG0ozgYYdDDAILa7c6K-oCg0Kx6Q6WNbYhuVjjIrho3ss5iVj6Sa44MNkC9XgJg0pmoSwIt9404S8zD5nmMc0IigvZaYUOJDawYB3BQ-fPF9QAmav6XS_p8RBbyWe1i_SzQYtS9t2W1u3rYoiqS9DDx70lzP4GGoanItJDxd_Snxkm9UwoiOQh2Zld47__8HnmlNAEQXHi1H6hxUxjeQL4nIIMxd2JOvSu2k3rIhWb80BjPskys4r6grf7wsUXt_elga7M7VuFdzFRoz6H21E2HDjvSTfAzC340NApB5NaAZs7kAlQCIjdofXo5wh_gZhDcgaUb7Lyr3mDTPIyVJk";
  final String user_id = "176";
  final String user_device_id = "643f226d7d856b50";

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.access_token;
    data['user_id'] = this.user_id;
    data['user_device_id'] = this.user_device_id;

    return data;
  }
}
