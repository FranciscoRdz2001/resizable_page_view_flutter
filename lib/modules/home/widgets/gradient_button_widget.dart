import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GradientButtonWidget extends StatelessWidget {
  const GradientButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Colors.orange, Colors.pinkAccent],
        ),
      ),
      child: const Text(
        'Next',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
