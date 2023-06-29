import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 254, 130, 130),
              Color.fromARGB(255, 255, 72, 72),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              SizedBox(height: h * 0.3),
              Container(
                width: 220,
                height: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tinder_logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              RichText(
                textDirection: TextDirection.ltr,
                text: const TextSpan(
                  text:
                      'By tapping Create Account os Sigen In, you agree your ',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              RichText(
                  textDirection: TextDirection.ltr,
                  text: const TextSpan(
                      text: 'Terms. ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      children: [
                        TextSpan(
                            text: 'Learn how we process you data in our ',
                            style: TextStyle(decoration: TextDecoration.none)),
                        TextSpan(
                          text: 'Privacy.',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ])),
              RichText(
                textDirection: TextDirection.ltr,
                text: const TextSpan(
                  text: 'Policy',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                        text: ' and ',
                        style: TextStyle(decoration: TextDecoration.none)),
                    TextSpan(
                      text: 'Cookies Policy.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.05),
              Container(
                width: w * 0.9,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                        textDirection: TextDirection.ltr,
                        Icons.apple,
                        color: Colors.white),
                    Text(
                      textDirection: TextDirection.ltr,
                      'SIGN IN WITH APPLE',
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ),
              SizedBox(height: h * 0.01),
              Container(
                width: w * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                        textDirection: TextDirection.ltr,
                        Icons.facebook,
                        color: Colors.white),
                    Text(
                      textDirection: TextDirection.ltr,
                      'SIGN IN WITH FACEBOOK',
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ),
              SizedBox(height: h * 0.01),
              Container(
                width: w * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                        textDirection: TextDirection.ltr,
                        Icons.chat_bubble_outlined,
                        color: Colors.white),
                    Text(
                      textDirection: TextDirection.ltr,
                      'SIGN IN WITH PHONE NUMBER',
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              RichText(
                textDirection: TextDirection.ltr,
                text: const TextSpan(text: 'Trouble Signing In?'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
