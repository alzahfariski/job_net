import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import '../view/login.dart';

class MyIntroduction extends StatelessWidget {
  const MyIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xffDB2B3D),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            titlePadding: EdgeInsets.only(top: 120, bottom: 80),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          titleWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Bekerja sesuai',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
              children: <TextSpan>[
                TextSpan(
                  text: ' passion',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: ' adalah dambaan Semua Orang...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          bodyWidget: Center(
            child: Lottie.asset(
              'assets/lottie/splash1.json',
              width: 324,
              height: 324,
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            titlePadding: EdgeInsets.only(top: 120, bottom: 80),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          titleWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Atau anda Sedang butuh',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
              children: <TextSpan>[
                TextSpan(
                  text: ' tim dan Pekerja',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: ' yang profesionall ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          bodyWidget: Center(
            child: Lottie.asset(
              'assets/lottie/splash3.json',
              width: 324,
              height: 324,
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            titlePadding: EdgeInsets.only(top: 120, bottom: 80),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          titleWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Job Net',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
              children: <TextSpan>[
                TextSpan(
                  text: ' hadir membantu karirmu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          bodyWidget: Center(
            child: Lottie.asset(
              'assets/lottie/splash2.json',
              width: 324,
              height: 324,
            ),
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.white,
        color: Colors.white,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      showNextButton: true,
      next: Icon(
        Icons.navigate_next,
        color: Colors.white,
      ),
      showBackButton: true,
      back: Icon(
        Icons.navigate_before,
        color: Colors.white,
      ),
      done: const Text(
        "GO !",
        style: TextStyle(color: Colors.white),
      ),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }
}
