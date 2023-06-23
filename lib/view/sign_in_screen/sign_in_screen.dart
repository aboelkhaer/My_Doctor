import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../components/general_component.dart';
import '../../controller/sign_in_controller.dart';
import '../../core/constants/colors.dart';
import 'package:intl/intl.dart';



class SignInScreen extends GetView<SignInController> {
   SignInScreen({super.key});
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  var genderController = TextEditingController();
  var maritalStatusController = TextEditingController();
  var phoneController = TextEditingController();
  var dateOfBirthController =TextEditingController();
  String? dropdownValue ;
  String? dropdownValue2 ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Register',//.trx(context),
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: mainColor
                      ),
                    ),

                    const SizedBox(height: 30,),
                    CustomTextField(
                      controller: nameController,
                      prefix: Icons.person,
                      hintText: 'Name',//.trx(context),
                      inputType: TextInputType.text,
                    ),
                    const SizedBox(height: 15,),
                    CustomTextField(
                      controller: ageController,
                      prefix: Icons.person,
                      hintText: 'age',//.trx(context),
                      inputType: TextInputType.number,
                    ),
                    const SizedBox(height: 15,),
                    CustomTextField(
                      controller: dateOfBirthController,
                      prefix: Icons.date_range,
                      hintText: 'date_of_birth',//.trx(context),
                      inputType: TextInputType.datetime,
                      onTap: (){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2022-08-30'),
                        ).then((value)
                        {

                          dateOfBirthController.text = DateFormat.yMMMd().format(value!);
                        });
                      },
                    ),
                    const SizedBox(height: 15,),
                    DropdownButtonFormField<String>(
                      value:dropdownValue,
                      onChanged: (String? newValue) {
                        dropdownValue = newValue!;
                      },
                      items: <String>[
                        'male',//.trx(context),
                        'female',//.trx(context),
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:  const BorderSide(
                                color: mainColor,
                                width: 3
                            ),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        labelText: 'Gender',//.trx(context),
                        labelStyle: const TextStyle(color: mainColor),
                        prefixIcon: const Icon(Icons.generating_tokens_sharp,color: mainColor,),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    DropdownButtonFormField<String>(
                      value:dropdownValue2,
                      onChanged: (String? newValue) {
                        dropdownValue2 = newValue!;
                      },
                      items: <String>[
                        'Single',//.trx(context),
                        'Marred',//.trx(context),
                        'devorsed',//.trx(context),
                        'Widower',//.trx(context),
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:  const BorderSide(
                                color: mainColor,
                                width: 3
                            ),
                            borderRadius: BorderRadius.circular(17)
                        ),
                        labelText: 'Marital_Status',//.trx(context),
                        labelStyle: const TextStyle(color: mainColor),
                        prefixIcon: const Icon( Icons.person,color: mainColor,),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    CustomTextField(
                      controller: emailController,
                      prefix: Icons.email_outlined,
                      hintText: 'Mail',//.trx(context),
                      inputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15,),
                    CustomTextField(
                      controller: passwordController,
                      prefix: Icons.lock_outline,
                      hintText: 'Password',//.trx(context),
                      inputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: 15,),
                    CustomTextField(
                      controller: phoneController,
                      prefix: Icons.phone,
                      hintText: 'Phone',//.trx(context),
                      inputType: TextInputType.phone,
                    ),
                    const SizedBox(height: 30,),
                      Center(
                        child: defaultButton(
                            width: 200,
                            function: (){
                            },
                            text: 'Register',//.trx(context)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Already_have_an_account',//.trx(context),
                          style: TextStyle(
                            fontSize: 20
                        ),),
                        TextButton(
                            onPressed: (){
                             // navigateTo(context,LoginScreen());
                            },
                            child:   Text('Login',//.trx(context),
                              style: TextStyle(
                                fontSize: 20),))
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
