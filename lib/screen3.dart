import 'package:flutter/material.dart';
import 'package:sample/screen4.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: SizedBox(
                  width: 250,
                  height: 240,
                  child: Image.asset("assets/phone.png"),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Add your mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 19.69,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.06,
                letterSpacing: 0.06,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'We’ll need to confirm it by sending a text.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.11,
                letterSpacing: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: "moble number",
                  hintText: '+ (___)',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen4(),),); },
              child: Container(
                width: 300,
                height: 50,
                decoration: ShapeDecoration(color:  Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),child:  Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                  'Proceed',
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
            ),
          ],
        ),
      ),
    );
  }
}
