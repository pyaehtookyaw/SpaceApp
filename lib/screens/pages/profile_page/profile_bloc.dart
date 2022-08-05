import 'dart:convert';

import 'package:rxdart/rxdart.dart';
import 'package:space_app/helpers/base_network.dart';
import 'package:space_app/helpers/response_ob.dart';
import 'package:space_app/helpers/shared_pref.dart';
import 'package:space_app/model/user_model.dart';
import 'package:space_app/utils/app_constants.dart';

class ProfileBloc extends BaseNetwork {
  PublishSubject<ResponseOb> profileController = PublishSubject();
  Stream<ResponseOb> profileStream() => profileController.stream;

  getProfile() async {
    SharedPref.getData(key: SharedPref.profile).then((str) {
      if (str != null && str.toString() != "null") {
        ResponseOb resp = ResponseOb(message: MsgState.data);
        resp.data = UserModel.fromJson(json.decode(str));
        profileController.sink.add(resp);
      }
    });

    // getReq(PROFILE_URL, onDataCallBack: (ResponseOb resp) {
    //   print(resp.data);
    //   if (resp.data['success'] == true) {
    //     SharedPref.setData(
    //         key: SharedPref.profile, value: json.encode(resp.data));
    //     resp.data = ProfileResponseOb.fromJson(resp.data).result;
    //   }
    //   profileController.sink.add(resp);
    // }, errorCallBack: (ResponseOb resp) {
    //   profileController.sink.add(resp);
    // });
  }

  dispose() {
    profileController.close();
  }
}
