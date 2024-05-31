import 'package:flutter/material.dart';
import 'package:sample/screen6.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Text(
                  'How you’ll log in',
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
                'Make sure you keep it as secure as possible!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.06,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Password",
                    hintText: '+ (___)',
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => screen6()),
                  );
                },
                child: Container(
                  width: 270,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFF0083),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
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
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 50),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                    Text(
                      'I agree to the Terms & Conditions and Policy.',
                      style: TextStyle(
                        color: Color(0xFFFF0083),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.16,
                        letterSpacing: 0.03,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
