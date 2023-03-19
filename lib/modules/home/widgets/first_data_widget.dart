import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrolleable_challenge/modules/home/widgets/gradient_button_widget.dart';

class FirstDataWidget extends StatelessWidget {
  final GlobalKey uniqueKey;
  const FirstDataWidget({
    super.key,
    required this.uniqueKey,
  });

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    return Column(
      key: uniqueKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Find local community events',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: size.height * 0.01),
        const Text(
          'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: size.height * 0.05),
        const Align(
          alignment: Alignment.bottomRight,
          child: GradientButtonWidget(),
        )
      ],
    );
  }
}
