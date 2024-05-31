import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sample/screen7.dart';

class screen8 extends StatefulWidget {
  const screen8({super.key});

  @override
  State<screen8> createState() => _screen8State();
}

class _screen8State extends State<screen8> {
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
                    'Loan Balance',
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
                        '\$3,000.00 of \$10,050.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                      SizedBox(width: 70),
                      Text(
                        '39 days left',
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
                    width: 360,
                    lineHeight: 5,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 168, left: 200),
                  child: Text(
                    'Repay Loan',
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
                  padding: const EdgeInsets.only(top: 140, left: 310),
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return DefaultTabController(
                                length: 2,
                                child: Container(
                                  color: Colors.white,
                                  height: 500,
                                  width: 450,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Repay Loan',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),SizedBox(width: 230,),
                                          TextButton(
                                            onPressed: () { Navigator.of(context).pop(); },
                                            child: Icon(
                                              Icons.close,
                                              size: 30,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Color(0x19DD313F),
                                        ),
                                        child: TabBar(
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
                                          dividerHeight: 0,
                                          indicator: BoxDecoration(
                                            color: Color(0xFFFF0083),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          labelColor: Colors.black,
                                          unselectedLabelColor: Colors.black,
                                          dividerColor: Colors.black,
                                          tabs: [
                                            Tab(
                                              child: Text(
                                                'Full Repayment',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Tab(
                                              child: Text(
                                                'Partial Repayment',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, bottom: 30),
                                        child: Text(
                                          'Repay your loan today and take another one immediately.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF959595),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0.12,
                                            letterSpacing: 0.40,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          children: [
                                            Container(
                                              color: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 40, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'You currently owe',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 22,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0.11,
                                                        letterSpacing: 0.04,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 50,
                                                      ),
                                                      child: Text(
                                                        '\$ 10,050.00',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 24,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 0.03,
                                                          letterSpacing: 0.07,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 90,
                                                              left: 60),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                              context: context,
                                                              isScrollControlled:
                                                                  true,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return SizedBox(
                                                                  height: 600,
                                                                  width: 400,
                                                                  child: Column(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'That was way to easy!',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height:
                                                                                0.08,
                                                                            letterSpacing:
                                                                                0.04,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'Congratulations!',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                24,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            CircleAvatar(
                                                                          radius:
                                                                              50,
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          child:
                                                                              Icon(
                                                                            Icons.done,
                                                                            size:
                                                                                60,
                                                                            color:
                                                                                Colors.green,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'Transaction Summary',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                16,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          '\$ 10,050.00 ',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                24,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          'Your Loan has been fully Paid',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                16,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                50),
                                                                        child:
                                                                            TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => screen7()),
                                                                                (route) => false);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                250,
                                                                            height:
                                                                                60,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFFFF0083),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.only(top: 15),
                                                                              child: Text(
                                                                                'okey',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Color(0xFFFFF2F2),
                                                                                  fontSize: 18,
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                  letterSpacing: 0.05,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              });
                                                        },
                                                        child: Container(
                                                          width: 250,
                                                          height: 60,
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
                                                                    top: 15),
                                                            child: Text(
                                                              'Continue',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFFFF2F2),
                                                                fontSize: 18,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                letterSpacing:
                                                                    0.05,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30),
                                                child: Column(
                                                  children: [
                                                    TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.black,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                        labelText:
                                                            'Enter Amount',
                                                        hintText: '+ (___)',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 90,
                                                              left: 60),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                              context: context,
                                                              isScrollControlled:
                                                                  true,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return SizedBox(
                                                                  height: 600,
                                                                  width: 400,
                                                                  child: Column(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'That was way to easy!',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height:
                                                                                0.08,
                                                                            letterSpacing:
                                                                                0.04,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'Congratulations!',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                24,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            CircleAvatar(
                                                                          radius:
                                                                              50,
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          child:
                                                                              Icon(
                                                                            Icons.done,
                                                                            size:
                                                                                60,
                                                                            color:
                                                                                Colors.green,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                30),
                                                                        child:
                                                                            Text(
                                                                          'Transaction Summary',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                16,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          '\$ 10,050.00 ',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                24,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          'Your Loan has been fully\nPaid',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF1F1F1F),
                                                                            fontSize:
                                                                                16,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            height:
                                                                                0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                50),
                                                                        child:
                                                                            TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => screen7()),
                                                                                (route) => false);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                250,
                                                                            height:
                                                                                60,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFFFF0083),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.only(top: 15),
                                                                              child: Text(
                                                                                'okey',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: Color(0xFFFFF2F2),
                                                                                  fontSize: 18,
                                                                                  fontFamily: 'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                  letterSpacing: 0.05,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              });
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 56),
                                                          child: Container(
                                                            width: 250,
                                                            height: 60,
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
                                                                      top: 15),
                                                              child: Text(
                                                                'Continue',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFFFF2F2),
                                                                  fontSize: 18,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  letterSpacing:
                                                                      0.05,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                ));
                          });
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
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Container(
              width: 450,
              height: 480,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 20),
            child: Row(
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.08,
                  ),
                ),
                SizedBox(width: 180),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFFFF0083),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.10,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 20),
            child: Text(
              'Mini-Statement',
              style: TextStyle(
                color: Color(0xFF707070),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 20),
            child: Text(
              'Loan Disbursement',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 280),
            child: Text(
              '\$10,050.00',
              style: TextStyle(
                color: Color(0xFF53D258),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460, left: 20),
            child: Text(
              '2022-09-12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 20),
            child: Text(
              'Withdraw to Bank',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510, left: 280),
            child: Text(
              '-\$10,050.00',
              style: TextStyle(
                color: Color(0xFFE25C5C),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530, left: 20),
            child: Text(
              '2022-09-12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 570, left: 20),
            child: Text(
              'Loan Repayment',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 585, left: 280),
            child: Text(
              '\$3,000.00',
              style: TextStyle(
                color: Color(0xFF53D258),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 605, left: 20),
            child: Text(
              '2022-09-12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640, left: 20),
            child: Text(
              'Loan Repayment Fees',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650, left: 280),
            child: Text(
              '-\$32.00',
              style: TextStyle(
                color: Color(0xFFE25C5C),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 675, left: 20),
            child: Text(
              '2022-09-12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
