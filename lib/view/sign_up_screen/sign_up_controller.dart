import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/general_component.dart';
import '../../controller/sign_up_controller.dart';
import '../../core/constants/colors.dart';


class SignUpScreen extends GetView<SignUpController> {
   SignUpScreen({super.key});
   var formKey = GlobalKey<FormState>();
   var passwordController = TextEditingController();
   var mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',//.trx(context),
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color:mainColor
                    ),
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    controller: mailController,
                    prefix: Icons.phone,
                    hintText: 'Mail',//.trx(context),
                  ),
                  const SizedBox(height: 30,),
                  CustomTextField(
                    controller: passwordController,
                    prefix: Icons.lock_outline,
                    hintText: 'Password',//.trx(context),

                  ),
                  const SizedBox(height: 15,),
                  Center(
                    child:

                       defaultButton(
                          width: 200,
                          function: () {
                          },
                          text: 'Login',//.trx(context)),

                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Do_not_have_an_account?',//.trx(context),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),),
                      TextButton(
                          onPressed: (){
                            //navigateTo(context, RegisterScreen());
                          },
                          child:  Text('Register',//.trx(context),
                            style: const TextStyle(
                              fontSize: 20),))
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
