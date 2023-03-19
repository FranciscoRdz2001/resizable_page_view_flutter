import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrolleable_challenge/modules/home/controllers/scrolleable_resizer_controller.dart/scrolleable_resizer_controller.dart';
import 'package:scrolleable_challenge/modules/home/widgets/first_data_widget.dart';

import '../widgets/second_data_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScrolleableResizerController());

    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Obx(
            () {
              final height = controller.currentParentHeight.value;
              const vPadding = 46;
              return Container(
                height: height + vPadding,
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  bottom: 16,
                  right: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: PageView(
                  clipBehavior: Clip.none,
                  controller: controller.pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Opacity(
                      opacity: controller.firstOpacity.value,
                      child: SingleChildScrollView(
                        clipBehavior: Clip.none,
                        physics: const NeverScrollableScrollPhysics(),
                        child: FirstDataWidget(uniqueKey: controller.firstKey),
                      ),
                    ),
                    Opacity(
                      opacity: controller.secondOpacity.value,
                      child: SingleChildScrollView(
                        clipBehavior: Clip.none,
                        physics: const NeverScrollableScrollPhysics(),
                        child:
                            SecondDataWidget(uniqueKey: controller.secondKey),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
