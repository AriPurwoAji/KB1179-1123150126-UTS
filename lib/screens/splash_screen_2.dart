import 'package:flutter/material.dart';
import 'splash_screen_1.dart';
import 'splash_screen_3.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.cyan.shade50,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/try.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Title
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),

                // Subtext / deskripsi
                const Text(
                  "Don't worry! we get your cover.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.cyan,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 2),
                const Text(
                  "Use Ari Wallet instead of cash or cards!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
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

                const SizedBox(height: 60),

                // Tombol Continue
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplashScreen3(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
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
