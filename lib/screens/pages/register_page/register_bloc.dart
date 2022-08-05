import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:space_app/helpers/base_network.dart';
import 'package:space_app/helpers/response_ob.dart';
import 'package:space_app/helpers/shared_pref.dart';
import 'package:space_app/utils/app_constants.dart';

class RegisterBloc extends BaseNetwork {
  PublishSubject<ResponseOb> registerController = PublishSubject();
  Stream<ResponseOb> registerStream() => registerController.stream;

  register(Map<String, String> map) {
    ResponseOb resp = ResponseOb(message: MsgState.loading);
    registerController.sink.add(resp);

    postReq(BASE_URL + "user/register", params: map,
        onDataCallBack: (ResponseOb resp) {
      print(resp.message); //Map

      SharedPref.setData(
          key: SharedPref.profile, value: json.encode(resp.data));
      registerController.sink.add(resp);
    }, errorCallBack: (ResponseOb resp) {
      registerController.sink.add(resp);
    });
  }

  dispose() {
    registerController.close();
  }
}
