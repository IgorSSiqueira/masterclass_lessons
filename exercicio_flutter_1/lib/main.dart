import 'package:exercicio_flutter_1/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Page2());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.black,
      child: Column(
        textDirection: TextDirection.ltr,
        children: [
          SizedBox(height: h * 0.15),
          Wrap(
            textDirection: TextDirection.ltr,
            children: [
              Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 4),
              Container(
                width: 35,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.05),
          RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
                text: 'Get your Money\n Under Control',
                style: TextStyle(fontSize: 40)),
          ),
          const SizedBox(height: 10),
          RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
              text: 'Manage your expenses,',
              style: TextStyle(fontSize: 30, color: Colors.white54),
            ),
          ),
          RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
              text: 'Seamlessly.',
              style: TextStyle(fontSize: 30, color: Colors.white54),
            ),
          ),
          SizedBox(height: h * 0.05),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Sign Up with Email ID',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Center(
              child: Wrap(
                textDirection: TextDirection.ltr,
                children: [
                  Icon(Icons.email, textDirection: TextDirection.ltr),
                  SizedBox(width: 5),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.05),
          RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
                text: 'Already have an account?.',
                style: TextStyle(fontSize: 16, color: Colors.white),
                children: [
                  TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ]),
          ),
        ],
      ),
    );
  }
}
