import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrolleable_challenge/modules/home/widgets/gradient_button_widget.dart';

class SecondDataWidget extends StatelessWidget {
  final GlobalKey uniqueKey;
  const SecondDataWidget({
    super.key,
    required this.uniqueKey,
  });

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      key: uniqueKey,
      children: [
        const Text(
          'Create an account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Text(
          'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...' *
              2,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: size.height * 0.05),
        Container(
          height: size.height * 0.05,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text('Enter account information'),
        ),
        SizedBox(height: size.height * 0.05),
        Container(
          height: size.height * 0.05,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text('Enter account information'),
        ),
        SizedBox(height: size.height * 0.05),
        const Align(
          alignment: Alignment.centerRight,
          child: GradientButtonWidget(),
        ),
      ],
    );
  }
}
