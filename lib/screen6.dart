import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sample/screen7.dart';

class screen6 extends StatefulWidget {
  const screen6({super.key});

  @override
  State<screen6> createState() => _screen6State();
}

class _screen6State extends State<screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Text(
              'Verify',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 29,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.03,
                letterSpacing: 0.06,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Please enter the 6 digit one time \ncode to activate your account!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
              height: 1,
              letterSpacing: 1.06,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: OtpTextField(
              borderRadius: BorderRadius.circular(10),
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              }, // end onSubmit
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Didn’t receive a Code?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.08,
              letterSpacing: 0.06,
            ),
          ),
          SizedBox(height: 60),
          Text(
            'Resend Code!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              height: 0.08,
              letterSpacing: 0.06,
            ),
          ),SizedBox(height: 60),
          TextButton(
            onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen7(),),); },
            child: Container(
              width: 270,
              height: 50,
              decoration: ShapeDecoration(color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),child:  Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Verify',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFF2F2),
                  fontSize: 17.72,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            ),
          )
        ],
      ),
    ),);
  }
}
