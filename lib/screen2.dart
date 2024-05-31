import 'package:flutter/material.dart';
import 'package:sample/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Pay Fast',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.05,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Forget Everything \nYou Know About\nBanking',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset("assets/1stpage.png"),
            ),
            SizedBox(height: 25),
            Container(
              width: 200,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => screen3(),
                    ),
                  );
                },
                child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
