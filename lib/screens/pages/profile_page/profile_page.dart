import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:space_app/helpers/response_ob.dart';
import 'package:space_app/model/user_model.dart';

import 'profile_bloc.dart';

class ProifilePage extends StatefulWidget {
  const ProifilePage({Key? key}) : super(key: key);

  @override
  State<ProifilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProifilePage> {
  final _bloc = ProfileBloc();

  Map<String, dynamic>? paymentIntentData;

  @override
  void initState() {
    super.initState();
    _bloc.getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        leading: NeumorphicButton(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          style: NeumorphicStyle(
            // shadowLightColor: Colors.orange,
            // shadowDarkColor: Colors.orange,
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
            intensity: 20,
            depth: 2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          NeumorphicButton(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            style: NeumorphicStyle(
              // shadowLightColor: Colors.orange,
              // shadowDarkColor: Colors.orange,
              shape: NeumorphicShape.flat,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
              intensity: 20,
              depth: 2,
            ),
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return ProfilePage();
              // }));
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Neumorphic(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Image.network(
                        width: 150,
                        height: 150,
                        'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc'),
                  ],
                ),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
                  intensity: 20,
                  depth: 2,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Music Name",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            NeumorphicSlider(
              style: SliderStyle(
                depth: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NeumorphicButton(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  style: NeumorphicStyle(
                    // shadowLightColor: Colors.orange,
                    // shadowDarkColor: Colors.orange,
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(100)),
                    intensity: 20,
                    depth: 2,
                  ),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (BuildContext context) {
                    //   return ProfilePage();
                    // }));
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                NeumorphicButton(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  style: NeumorphicStyle(
                    // shadowLightColor: Colors.orange,
                    // shadowDarkColor: Colors.orange,
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(100)),
                    intensity: 20,
                    depth: 2,
                  ),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (BuildContext context) {
                    //   return ProfilePage();
                    // }));
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                NeumorphicButton(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  style: NeumorphicStyle(
                    // shadowLightColor: Colors.orange,
                    // shadowDarkColor: Colors.orange,
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(100)),
                    intensity: 20,
                    depth: 2,
                  ),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (BuildContext context) {
                    //   return ProfilePage();
                    // }));
                  },
                )
              ],
            ),
          
            // TextButton(
            //   onPressed: () async {
            //     final paymentMethod = await Stripe.instance
            //         .createPaymentMethod(PaymentMethodParams.card());
            //     // create payment method
            //     // final paymentMethod = await Stripe.instance.createPaymentMethod(
            //     //     PaymentMethodParams.card(
            //     //         paymentMethodData: BillingDetails(
            //     //             address: "Yangon",
            //     //             name: "PJK",
            //     //             email: "phk@gmail.com",
            //     //             phone: "093434")));
            //   },
            //   child: Text('pay'),
            // )
          ],
        ),
      ),
    );
  }

  // Future<void> startPayment() async {
  //   StripeP
  //   await Stripe.instance.initPaymentSheet(
  //       paymentSheetParameters: SetupPaymentSheetParameters(
  //         setupIntentClientSecret: paymentIntentData['paymentIntent'],
  //         applePay: true,

  //       ));
  // }
}
