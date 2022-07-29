
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/helpers/response_ob.dart';

class AppUtils {
  static void showSnackBar(String title, ScaffoldState? state,
      {Color bgColor = Colors.red, Color textColor = Colors.white}) {
    state!.showSnackBar(SnackBar(
      content: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
      backgroundColor: bgColor,
    ));
  }

  static Widget loadingWidget({Stream<ResponseOb>? stream, Widget? widget}) {
    return StreamBuilder<ResponseOb>(
      initialData: ResponseOb(),
      stream: stream,
      builder: (context, snapshot) {
        ResponseOb? resp = snapshot.data;
        if (resp!.message == MsgState.loading) {
          return Center(
              child: Neumorphic(
            style: const NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.circle(),
              depth: -3,
//                lightSource: LightSource.topLeft,
            ),
            child:const CircularProgressIndicator(),
          ));
        } else {
          return widget!;
        }
      },
    );
  }
}
