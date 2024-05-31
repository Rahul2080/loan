import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample/screen2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  List<String> pic = [
    "assets/1stpage.png",
    "assets/2ndpic.png",
    "assets/3rdpic.png"
  ];
  List<String> txt = [
    'Send Money',
    'Pay Bills',
    'Pay Merchants',
  ];
  List<String> subhead = [
    'Send money to all networks and banks \nright from your Pay Fast\naccount.',
    'Pay Bills such as Electricity, Water bill, TV\n subscriptions etc. \nBuy airtime & Bundles.\n',
    'Even with insufficient balance, Pay by\n Phone at Merchants with Pay Fast\nAccounts.',
  ];
  int currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: pic.length,
            carouselController: _controller,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              color: Colors.white,
              width: 500,
              height: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Image.asset(
                        pic[itemIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      txt[itemIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      subhead[itemIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            options: CarouselOptions(
                autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                initialPage: currentIndex,
                height: 600),
          ),
          Container(
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: pic.length,
              effect: WormEffect(),
            ),
          ),
          SizedBox(height: 50),
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
              padding: const EdgeInsets.only(top: 4),
              child: TextButton(
                onPressed: () {
                  if (currentIndex == 2) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => screen2(),
                      ),
                    );
                  } else {
                    _controller.nextPage();
                  }
                },
                child: Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFF2F2),
                    fontSize: 18,
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
    );
  }
}
