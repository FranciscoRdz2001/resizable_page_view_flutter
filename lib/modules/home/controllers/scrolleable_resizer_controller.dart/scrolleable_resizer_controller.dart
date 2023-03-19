import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ScrolleableResizerController extends GetxController {
  final RxDouble currentParentHeight = RxDouble(0);
  final RxDouble firstOpacity = RxDouble(1);
  final RxDouble secondOpacity = RxDouble(1);

  final PageController pageController = PageController(initialPage: 0);
  late final double initialHeight;
  final firstKey = GlobalKey();
  final secondKey = GlobalKey();

  @override
  void onReady() {
    super.onReady();
    pageController.addListener(_pageListener);
    final firstSize = firstKey.currentContext?.size;
    if (firstSize == null) return;
    initialHeight = firstSize.height;
    currentParentHeight.value = firstSize.height;
  }

  void _pageListener() {
    final firstSize = firstKey.currentContext?.size;
    final secondSize = secondKey.currentContext?.size;
    if (firstSize == null || secondSize == null) return;

    final inReverse =
        pageController.position.userScrollDirection == ScrollDirection.reverse;
    final value = pageController.page! - pageController.page!.floor();
    double finalValue = value;
    if (inReverse) {
      finalValue = value == 0.0 ? 1.0 : value;
    }
    secondOpacity.value = finalValue;
    firstOpacity.value = 1 - finalValue;

    final diff = secondSize.height - firstSize.height;
    final extra = diff * pageController.page!;
    currentParentHeight.value = initialHeight + extra;
  }
}
