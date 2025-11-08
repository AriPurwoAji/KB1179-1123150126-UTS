import 'package:flutter/material.dart';
import 'splash_screen_1.dart';
import 'splash_screen_2.dart';
import 'sign_in_screen.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/key.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    "Lets try Ari Wallet now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.cyan,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    "And get the best solution for your needs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.cyan,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SplashScreen1()),
                          );
                        },
                        child: _indicator(false),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SplashScreen2()),
                          );
                        },
                        child: _indicator(false),
                      ),
                      const SizedBox(width: 10),
                      _indicator(true),
                    ],
                  ),

                  const SizedBox(height: 50),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: const Duration(
                              milliseconds: 500,
                            ),
                            pageBuilder: (_, _, _) => const SignInScreen(),
                            transitionsBuilder: (_, animation, __, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool active) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 14 : 10,
      height: active ? 14 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.cyan : const Color(0xFFedede9),
      ),
    );
  }
}
