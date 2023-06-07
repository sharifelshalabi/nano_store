import '../errors/base_error.dart';
import 'base_result_model.dart';

class BaseResponseModel<Result extends BaseResultModel>
    extends BaseResultModel {
  Result? universityModel;
  bool? isOk ;
  BaseError? error;
  Message? message;

  // ServerError? serverError;

  BaseResponseModel({
    this.universityModel,
    this.isOk,
    // this.serverError,
    this.error,
  });

  BaseResponseModel.fromJson(
      {Map<String, dynamic>? json,
      Result Function(Map<String, dynamic>?)? fromJson,
      BaseError? error}) {
    if (json == null) {
      if (error != null) {
        this.error = error;
        isOk = false;
      }
    } else {
      print(json);
      isOk = true;
      try {
        message = json['message'] != null && json['message'] != ""
            ? Message(
                type: json['message']["type"],
                content: (json['message']['content']).length != 0
                    ? json['message']["content"]
                    : [json['message']["type"].toString()],
                code: json['message']["code"])
            : null;
      } catch (e) {
        print(e);
        message = null;
      }

      this.error = error;

      if (fromJson != null) {
        if (json != null) {
          print(json);
          universityModel = fromJson(json);
        } else {
          if (isOk!) universityModel = fromJson({});
        }
      } /*else if (success!) result = fromJson!({});*/
    }
  }
}

class Message extends BaseResultModel {
  String? type;
  int? code;
  List? content;

  Message({this.type, this.code, this.content});

  Message.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    code = json['code'];
    content = json['content'].cast<String>();
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['code'] = code;
    data['content'] = content;
    return data;
  }
}
