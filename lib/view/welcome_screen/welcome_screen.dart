import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../components/general_component.dart';
import '../../controller/home_controller.dart';
import '../../core/constants/colors.dart';


class WelcomeScreen extends GetView<HomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 420,
              decoration: const BoxDecoration(
                color: Color(0xffC4DFDF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120)),
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg',
                      ),
                      fit: BoxFit.cover),
                  color: Color(0xff19A7CE),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 290,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 20),
                    child: Text("My_Doctor",//.trx(context),

                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: Text(
                      "Instantly_you_can_easily_contact_with_the_doctor_and_contact_for_your_needs",//.trx(context),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            defaultButton(
                                width: 95,
                                function: () {
                                 // BlocProvider.of<LocaleCubit>(context).changeLanguage('en');
                                },
                                text: 'english'),
                            SizedBox(width: 15,),
                            defaultButton(
                                width: 90,
                                function: () {
                                 // BlocProvider.of<LocaleCubit>(context).changeLanguage('ar');
                                },
                                text: 'العربية'),

                          ],
                        ),
                      ),
                  SizedBox(height: 15,),
                  defaultButton(
                      width: 200,
                      function: () {
                         // navigateTo(context,RegisterScreen());
                      },
                      text: 'Get_started',//.trx(context)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}