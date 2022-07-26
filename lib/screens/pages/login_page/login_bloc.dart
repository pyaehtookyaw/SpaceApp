import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:space_app/helpers/base_network.dart';
import 'package:space_app/helpers/response_ob.dart';
import 'package:space_app/helpers/shared_pref.dart';
import 'package:space_app/model/user_model.dart';
import 'package:space_app/utils/app_constants.dart';

class LoginBloc extends BaseNetwork {
  PublishSubject<ResponseOb> loginController = PublishSubject();
  Stream<ResponseOb> loginStream() => loginController.stream;

  login(Map<String, String> map) {
    ResponseOb resp = ResponseOb(message: MsgState.loading);
    loginController.sink.add(resp);

    postReq(BASE_URL + "user/login", params: map,
        onDataCallBack: (ResponseOb resp) {
      print(resp.message); //Map

      SharedPref.setData(
          key: SharedPref.profile, value: json.encode(resp.data));
      resp.data = UserModel.fromJson(resp.data);
      loginController.sink.add(resp);
    }, errorCallBack: (ResponseOb resp) {
      loginController.sink.add(resp);
    });
  }

  dispose() {
    loginController.close();
  }
}
