import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';
import 'package:sample/screen8.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class screen7 extends StatefulWidget {
  const screen7({super.key});

  @override
  State<screen7> createState() => _screen7State();
}

class _screen7State extends State<screen7> {
  bool isChecked = false;
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
        ],
        backgroundColor: Color(0xFFFF0083),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0.06,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: 430,
            height: 350,
            decoration: ShapeDecoration(
              color: Color(0xFFFF0083),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140, top: 10),
            child: Text(
              'Good afternoon',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140, top: 40),
            child: Text(
              'Jacquie!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 10),
            child: Stack(
              children: [
                Container(
                  width: 388,
                  height: 200,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 269),
                  child: SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/black.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 151),
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/blackdown.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Text(
                    'Loan Limit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 10),
                  child: Row(
                    children: [
                      Text(
                        '\$10,000.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(
                        'Request for \$5,500.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 124),
                  child: LinearPercentIndicator(
                    widgetIndicator: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    width: 360,
                    lineHeight: 5,
                    percent: 0.2,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 168, left: 200),
                  child: Text(
                    'Request for Loan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 138, left: 320),
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context,
                                void Function(void Function()) setState) {
                              return SizedBox(
                                height: 500,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          'How long do you want the loan for?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0.08,
                                            letterSpacing: 0.04,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        '2 Months',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF1F1F1F),
                                          fontSize: 24,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 300,
                                          height: 40,
                                          child: RangeSlider(
                                              values: values,
                                              labels:RangeLabels(values.start.round().toString(),values.end.round().toString()) ,
                                              divisions: 100,activeColor:  Color(0xFFFF0083),
                                              min: 0,
                                              max: 100,
                                              onChanged: (newValue) {
                                                if (values.start != newValue.start) return;
                                                setState((){
                                                  values = newValue;
                                                });

                                              })),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Container(
                                        width: 360,
                                        height: 120,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 27, left: 30),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Monthly \nPayment',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1,
                                                      letterSpacing: 0.03,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'NIL',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFFC4C4C4),
                                                      fontSize: 20,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, left: 50),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'No of\nPayments',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1,
                                                      letterSpacing: 0.03,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'NIL',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFFC4C4C4),
                                                      fontSize: 20,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, left: 50),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Total \nPayback',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1,
                                                      letterSpacing: 0.03,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'NIL',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFFC4C4C4),
                                                      fontSize: 20,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 80, top: 26),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                                value: isChecked,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = !isChecked;
                                                    print(isChecked);
                                                  });
                                                }),
                                            Text(
                                              'I agree to the Terms & Conditions and Policy',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0.16,
                                                letterSpacing: 0.03,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              builder: (BuildContext context) {
                                                return SizedBox(
                                                  height: 760,
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 28),
                                                          child: Text(
                                                            'That was way to easy!',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  0.04,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Text(
                                                          'Congratulations!',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF1F1F1F),
                                                            fontSize: 24,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        SizedBox(height: 30),
                                                        CircleAvatar(
                                                          radius: 50,
                                                          child: Icon(
                                                            Icons.done,
                                                            color: Colors.green,
                                                            size: 60,
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Text(
                                                          'Transaction Summary',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF1F1F1F),
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 0,
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Container(
                                                          width: 350,
                                                          height: 250,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 20),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  'Next Repayment Date: \nInterest Rate: \nMonthly Repayment:\n No of Payments: \nReason\nTotal Payback Amount:',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7F8790),
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    height: 3,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 60),
                                                                Text(
                                                                  '02/04/2023  \n 10 %\n\$5,000.00\n2\nEmergency Bills\n \$ 10,050.00',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF080808),
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    height: 3,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 35),
                                                        TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                              MaterialPageRoute(
                                                                builder: (_) =>
                                                                    screen8(),
                                                              ),
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 350,
                                                            height: 70,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFFF0083),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 30),
                                                              child: Text(
                                                                'Accept',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFFFF2F2),
                                                                  fontSize:
                                                                      17.72,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.07,
                                                                  letterSpacing:
                                                                      0.06,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        TextButton(
                                                          onPressed: () { Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>screen7()), (route)=>false);  },
                                                          child: Container(
                                                            width: 350,
                                                            height: 70,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Colors.black,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 30),
                                                              child: Text(
                                                                'Decline',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                  color: Color(
                                                                      0xFFFFF2F2),
                                                                  fontSize: 17.72,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 0.07,
                                                                  letterSpacing:
                                                                      0.06,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Container(
                                            width: 360,
                                            height: 60,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFF0083),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 28),
                                              child: Text(
                                                'Apply Now',
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
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFFFF0083),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 280),
                  child: Text(
                    '100%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Container(
              width: 500,
              height: 400,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 80),
                      child: Text(
                        "How do you want to use your limit?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                          letterSpacing: 0.04,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 25),
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF979797)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 60,
                              child: Image.asset("assets/upload.png"),
                            ),
                            Text(
                              'Emergency Bills',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                                letterSpacing: 0.04,
                              ),
                            ),
                            SizedBox(width: 60),
                            Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(width: .5)),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 25),
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF979797)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 60,
                              child: Image.asset("assets/upload.png"),
                            ),
                            Text(
                              'Food and Shopping',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                                letterSpacing: 0.04,
                              ),
                            ),
                            SizedBox(width: 60),
                            Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(width: .5)),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 25),
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF979797)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 60,
                              child: Image.asset("assets/upload.png"),
                            ),
                            Text(
                              'Others',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.08,
                                letterSpacing: 0.04,
                              ),
                            ),
                            SizedBox(width: 140),
                            Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(width: .5)),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 650),
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFF0083),
            ),
            child: Text("text"),
          ),
        ),
      ),
    );
  }
}
