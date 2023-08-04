// class TaskModel {
//   int? code;
//   List<Data>? data;
//   int? pageSize;
//   String? message;
//   int? totalTask;
//   int? todayTaskCount;
//   int? pastTaskCount;
//   int? upcomingTaskCount;

//   TaskModel(
//       {this.code,
//       this.data,
//       this.pageSize,
//       this.message,
//       this.totalTask,
//       this.todayTaskCount,
//       this.pastTaskCount,
//       this.upcomingTaskCount});

//   TaskModel.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     pageSize = json['page_size'];
//     message = json['message'];
//     totalTask = json['total_task'];
//     todayTaskCount = json['today_task_count'];
//     pastTaskCount = json['past_task_count'];
//     upcomingTaskCount = json['upcoming_task_count'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['page_size'] = this.pageSize;
//     data['message'] = this.message;
//     data['total_task'] = this.totalTask;
//     data['today_task_count'] = this.todayTaskCount;
//     data['past_task_count'] = this.pastTaskCount;
//     data['upcoming_task_count'] = this.upcomingTaskCount;
//     return data;
//   }
// }

class TaskModel {
  int? userTabId;
  int? id;
  Null? pTaskId;
  Null? pintabId;
  Null? muteId;
  String? taskStatus;
  int? userId;
  Null? groupId;
  String? userPerformedDate;
  Null? creatorPerformDate;
  int? taskTagId;
  int? createdByUserId;
  Null? tagId;
  String? taskRepeatStatus;
  Null? repeatGape;
  String? taskTitle;
  String? taskInstructions;
  String? taskStartDate;
  String? taskEndDate;
  String? endType;
  Null? endValue;
  String? userContactName;
  String? isActive;
  String? userContactNumber;
  Null? repeatDays;
  Null? repeatWeekDay;
  Null? repeatMonth;
  String? repeatYear;
  String? tagName;
  String? groupName;
  String? assignType;
  String? isPin;
  String? uniqueMessageId;
  String? newUniqueMsgId;
  String? chatText;
  int? userTagId;
  Null? abuseId;
  Null? blockId;
  Null? mediaId;
  String? taskBarStatus;
  String? isNew;
  String? userImage;
  String? groupImage;
  String? tagImage;
  String? percentageOfPending;
  String? percentageOfSkip;
  String? persentageOfAccept;
  String? persentageOfPerformed;
  int? totalUnreadGroup;
  int? totalUnreadSingle;
  int? totalUserCount;
  int? totalPerformed;
  int? totalSkip;
  int? userStaus;
  TaskFileList? taskFileList;
  int? daysLeft;
  String? daysColorCode;
  String? dueFormate;
  String? isTaskPerformForCreator;
  String? isTaskPerformForUser;
  String? addedTime;
  String? completedTask;
  Null? isGroupDeleted;
  String? isMuted;
  String? isReportedUser;
  String? isBlockedUser;
  String? isMediaVisibility;
  Null? blockedDate;
  Null? reportedDate;
  Null? otherBlockedDate;
  String? isDeleted;

  TaskModel(
      {this.userTabId,
      this.id,
      this.pTaskId,
      this.pintabId,
      this.muteId,
      this.taskStatus,
      this.userId,
      this.groupId,
      this.userPerformedDate,
      this.creatorPerformDate,
      this.taskTagId,
      this.createdByUserId,
      this.tagId,
      this.taskRepeatStatus,
      this.repeatGape,
      this.taskTitle,
      this.taskInstructions,
      this.taskStartDate,
      this.taskEndDate,
      this.endType,
      this.endValue,
      this.userContactName,
      this.isActive,
      this.userContactNumber,
      this.repeatDays,
      this.repeatWeekDay,
      this.repeatMonth,
      this.repeatYear,
      this.tagName,
      this.groupName,
      this.assignType,
      this.isPin,
      this.uniqueMessageId,
      this.newUniqueMsgId,
      this.chatText,
      this.userTagId,
      this.abuseId,
      this.blockId,
      this.mediaId,
      this.taskBarStatus,
      this.isNew,
      this.userImage,
      this.groupImage,
      this.tagImage,
      this.percentageOfPending,
      this.percentageOfSkip,
      this.persentageOfAccept,
      this.persentageOfPerformed,
      this.totalUnreadGroup,
      this.totalUnreadSingle,
      this.totalUserCount,
      this.totalPerformed,
      this.totalSkip,
      this.userStaus,
      this.taskFileList,
      this.daysLeft,
      this.daysColorCode,
      this.dueFormate,
      this.isTaskPerformForCreator,
      this.isTaskPerformForUser,
      this.addedTime,
      this.completedTask,
      this.isGroupDeleted,
      this.isMuted,
      this.isReportedUser,
      this.isBlockedUser,
      this.isMediaVisibility,
      this.blockedDate,
      this.reportedDate,
      this.otherBlockedDate,
      this.isDeleted});

  TaskModel.fromJson(Map<String, dynamic> json) {
    userTabId = json['user_tab_id'];
    id = json['id'];
    pTaskId = json['p_task_id'];
    pintabId = json['pintab_id'];
    muteId = json['mute_id'];
    taskStatus = json['task_status'];
    userId = json['user_id'];
    groupId = json['group_id'];
    userPerformedDate = json['user_performed_date'];
    creatorPerformDate = json['creator_perform_date'];
    taskTagId = json['task_tag_id'];
    createdByUserId = json['created_by_user_id'];
    tagId = json['tag_id'];
    taskRepeatStatus = json['task_repeat_status'];
    repeatGape = json['repeat_gape'];
    taskTitle = json['task_title'];
    taskInstructions = json['task_instructions'];
    taskStartDate = json['task_start_date'];
    taskEndDate = json['task_end_date'];
    endType = json['end_type'];
    endValue = json['end_value'];
    userContactName = json['user_contact_name'];
    isActive = json['is_active'];
    userContactNumber = json['user_contact_number'];
    repeatDays = json['repeat_days'];
    repeatWeekDay = json['repeat_week_day'];
    repeatMonth = json['repeat_month'];
    repeatYear = json['repeat_year'];
    tagName = json['tag_name'];
    groupName = json['group_name'];
    assignType = json['assign_type'];
    isPin = json['is_pin'];
    uniqueMessageId = json['unique_message_id'];
    newUniqueMsgId = json['new_unique_msg_id'];
    chatText = json['chat_text'];
    userTagId = json['user_tag_id'];
    abuseId = json['abuse_id'];
    blockId = json['block_id'];
    mediaId = json['media_id'];
    taskBarStatus = json['task_bar_status'];
    isNew = json['is_new'];
    userImage = json['user_image'];
    groupImage = json['group_image'];
    tagImage = json['tag_image'];
    percentageOfPending = json['percentage_of_pending'];
    percentageOfSkip = json['percentage_of_skip'];
    persentageOfAccept = json['persentage_of_accept'];
    persentageOfPerformed = json['persentage_of_performed'];
    totalUnreadGroup = json['total_unread_group'];
    totalUnreadSingle = json['total_unread_single'];
    totalUserCount = json['total_user_count'];
    totalPerformed = json['total_performed'];
    totalSkip = json['total_skip'];
    userStaus = json['user_staus'];
    taskFileList = json['task_file_list'] != null
        ? new TaskFileList.fromJson(json['task_file_list'])
        : null;
    daysLeft = json['days_left'];
    daysColorCode = json['days_color_code'];
    dueFormate = json['due_formate'];
    isTaskPerformForCreator = json['is_task_perform_for_creator'];
    isTaskPerformForUser = json['is_task_perform_for_user'];
    addedTime = json['added_time'];
    completedTask = json['completed_task'];
    isGroupDeleted = json['is_group_deleted'];
    isMuted = json['is_muted'];
    isReportedUser = json['is_reported_user'];
    isBlockedUser = json['is_blocked_user'];
    isMediaVisibility = json['is_media_visibility'];
    blockedDate = json['blocked_date'];
    reportedDate = json['reported_date'];
    otherBlockedDate = json['other_blocked_date'];
    isDeleted = json['is_deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_tab_id'] = this.userTabId;
    data['id'] = this.id;
    data['p_task_id'] = this.pTaskId;
    data['pintab_id'] = this.pintabId;
    data['mute_id'] = this.muteId;
    data['task_status'] = this.taskStatus;
    data['user_id'] = this.userId;
    data['group_id'] = this.groupId;
    data['user_performed_date'] = this.userPerformedDate;
    data['creator_perform_date'] = this.creatorPerformDate;
    data['task_tag_id'] = this.taskTagId;
    data['created_by_user_id'] = this.createdByUserId;
    data['tag_id'] = this.tagId;
    data['task_repeat_status'] = this.taskRepeatStatus;
    data['repeat_gape'] = this.repeatGape;
    data['task_title'] = this.taskTitle;
    data['task_instructions'] = this.taskInstructions;
    data['task_start_date'] = this.taskStartDate;
    data['task_end_date'] = this.taskEndDate;
    data['end_type'] = this.endType;
    data['end_value'] = this.endValue;
    data['user_contact_name'] = this.userContactName;
    data['is_active'] = this.isActive;
    data['user_contact_number'] = this.userContactNumber;
    data['repeat_days'] = this.repeatDays;
    data['repeat_week_day'] = this.repeatWeekDay;
    data['repeat_month'] = this.repeatMonth;
    data['repeat_year'] = this.repeatYear;
    data['tag_name'] = this.tagName;
    data['group_name'] = this.groupName;
    data['assign_type'] = this.assignType;
    data['is_pin'] = this.isPin;
    data['unique_message_id'] = this.uniqueMessageId;
    data['new_unique_msg_id'] = this.newUniqueMsgId;
    data['chat_text'] = this.chatText;
    data['user_tag_id'] = this.userTagId;
    data['abuse_id'] = this.abuseId;
    data['block_id'] = this.blockId;
    data['media_id'] = this.mediaId;
    data['task_bar_status'] = this.taskBarStatus;
    data['is_new'] = this.isNew;
    data['user_image'] = this.userImage;
    data['group_image'] = this.groupImage;
    data['tag_image'] = this.tagImage;
    data['percentage_of_pending'] = this.percentageOfPending;
    data['percentage_of_skip'] = this.percentageOfSkip;
    data['persentage_of_accept'] = this.persentageOfAccept;
    data['persentage_of_performed'] = this.persentageOfPerformed;
    data['total_unread_group'] = this.totalUnreadGroup;
    data['total_unread_single'] = this.totalUnreadSingle;
    data['total_user_count'] = this.totalUserCount;
    data['total_performed'] = this.totalPerformed;
    data['total_skip'] = this.totalSkip;
    data['user_staus'] = this.userStaus;
    if (this.taskFileList != null) {
      data['task_file_list'] = this.taskFileList!.toJson();
    }
    data['days_left'] = this.daysLeft;
    data['days_color_code'] = this.daysColorCode;
    data['due_formate'] = this.dueFormate;
    data['is_task_perform_for_creator'] = this.isTaskPerformForCreator;
    data['is_task_perform_for_user'] = this.isTaskPerformForUser;
    data['added_time'] = this.addedTime;
    data['completed_task'] = this.completedTask;
    data['is_group_deleted'] = this.isGroupDeleted;
    data['is_muted'] = this.isMuted;
    data['is_reported_user'] = this.isReportedUser;
    data['is_blocked_user'] = this.isBlockedUser;
    data['is_media_visibility'] = this.isMediaVisibility;
    data['blocked_date'] = this.blockedDate;
    data['reported_date'] = this.reportedDate;
    data['other_blocked_date'] = this.otherBlockedDate;
    data['is_deleted'] = this.isDeleted;
    return data;
  }
}

class TaskFileList {
  List<Audio>? audio;
  List<Location>? location;
  // List<Media>? media;

  TaskFileList({
    this.audio,
    this.location, //this.media
  });

  TaskFileList.fromJson(Map<String, dynamic> json) {
    if (json['Audio'] != null) {
      audio = <Audio>[];
      json['Audio'].forEach((v) {
        audio!.add(new Audio.fromJson(v));
      });
    }
    if (json['Location'] != null) {
      location = <Location>[];
      json['Location'].forEach((v) {
        location!.add(new Location.fromJson(v));
      });
    }
    // if (json['Media'] != null) {
    //   media = <Media>[];
    //   json['Media'].forEach((v) {
    //     media!.add(new Media.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.audio != null) {
      data['Audio'] = this.audio!.map((v) => v.toJson()).toList();
    }
    if (this.location != null) {
      data['Location'] = this.location!.map((v) => v.toJson()).toList();
    }
    // if (this.media != null) {
    //   data['Media'] = this.media!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Audio {
  int? id;
  String? image;

  Audio({this.id, this.image});

  Audio.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}

class Location {
  int? id;
  String? latLong;

  Location({this.id, this.latLong});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    latLong = json['lat_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lat_long'] = this.latLong;
    return data;
  }
}

class TaskPostModel {
  final String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjliZDcyNTlkNmJmMzAyNWI2YjkwZGRiZTBhZmE5ZTRiMDUwM2E4NGZhMzc2NTgyZDFkYmE4YTY4NGExMjc1MjgzNjNkNDU0YTczNDI2MGI3In0.eyJhdWQiOiIxIiwianRpIjoiOWJkNzI1OWQ2YmYzMDI1YjZiOTBkZGJlMGFmYTllNGIwNTAzYTg0ZmEzNzY1ODJkMWRiYThhNjg0YTEyNzUyODM2M2Q0NTRhNzM0MjYwYjciLCJpYXQiOjE2ODMxNzQ2ODYsIm5iZiI6MTY4MzE3NDY4NiwiZXhwIjoxNzE0Nzk3MDg2LCJzdWIiOiIxNzYiLCJzY29wZXMiOltdfQ.LAQMffNyIbFvtIV-Fyy1gr_VO0rXdq5myTx-ht2YJLSJMvb0oWameJ9XRx86kNIsixTHeRz88hiszlKvxZRNjtTGj7rGXjIqOAlqj1kKTbprPEcPpqEFD-j6FCPepzhHGKVPoIsJ2eJIjWOw-tZhD1B7xDaLOnTRi6x7stvBG-fm4CXKwkiNoVpEp0YPJ7LATB0KMd43KXResVhKrlBMnsuDBeMxClFxyoaRGPsq7npfRI0tbJHwcfVG8VQJJcig-bQn-N7rIifCitQjUTvnSCz5P97ISqZAyXFvE1DIs9EM1gIknx0h8w9VR09JhZynfbJyUgZ9mCozpCe_LjmSjGDG0ozgYYdDDAILa7c6K-oCg0Kx6Q6WNbYhuVjjIrho3ss5iVj6Sa44MNkC9XgJg0pmoSwIt9404S8zD5nmMc0IigvZaYUOJDawYB3BQ-fPF9QAmav6XS_p8RBbyWe1i_SzQYtS9t2W1u3rYoiqS9DDx70lzP4GGoanItJDxd_Snxkm9UwoiOQh2Zld47__8HnmlNAEQXHi1H6hxUxjeQL4nIIMxd2JOvSu2k3rIhWb80BjPskys4r6grf7wsUXt_elga7M7VuFdzFRoz6H21E2HDjvSTfAzC340NApB5NaAZs7kAlQCIjdofXo5wh_gZhDcgaUb7Lyr3mDTPIyVJk";
  final String pagination = "Y";
  final String user_id = "176";
  final String today_date = "2023-05-04 12:43:29";
  final String user_device_id = "643f226d7d856b50";
  final String page_no = "1";
  final String completed_task = "N";

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.access_token;
    data['pagination'] = this.pagination;
    data['user_id'] = this.user_id;
    data['today_date'] = this.today_date;
    data['user_device_id'] = this.user_device_id;
    data['page_no'] = this.page_no;
    data['completed_task'] = this.completed_task;

    return data;
  }
}
