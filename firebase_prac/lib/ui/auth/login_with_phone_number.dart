import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_prac/ui/auth/verify_code.dart';
import 'package:firebase_prac/widgets/round_button.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {

  bool loading = false;
  final phoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login With Phone Number'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            SizedBox(height: 50),

            TextFormField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                hintText: '+92 314 675667',
              ),
            ),

            SizedBox(height: 50),
            
           RoundButton(title: 'Login',
               onTap: (){

             auth.verifyPhoneNumber(
               phoneNumber:phoneNumberController.text ,
                 verificationCompleted: (_){

                 },
                 verificationFailed: (e){
                 Utils().ToastMessage(e.toString());
                 },
                 codeSent: (String VerificationId , int? token){

                 Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyCodeScreen()));

                 },
                 codeAutoRetrievalTimeout: (e){
                   Utils().ToastMessage(e.toString());
                 }
             );

           }),
          ],
        ),
      ),
    );
  }
}
