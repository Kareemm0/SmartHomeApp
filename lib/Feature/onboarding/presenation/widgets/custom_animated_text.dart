import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText(
              'Welcome',
              duration: const Duration(seconds: 10),
            ),
            FadeAnimatedText(
              'The best Experience To Make Your   wonderful  home more Smart',
              duration: const Duration(seconds: 30),
            ),
          ],
        ),
      ),
    );
  }
}
