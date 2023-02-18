import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil('/dash', (Route<dynamic> route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF9b1010),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "2022 \u00a9 PT Zen Multimedia Development",
                      // style: TextStyle(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
