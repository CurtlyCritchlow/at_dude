import 'package:flutter/material.dart';

import '../dude_theme.dart';
import '../services/navigation_service.dart';

final context = NavigationService.navKey.currentContext!;

class SnackBars extends StatelessWidget {
  const SnackBars({Key? key}) : super(key: key);
  static void errorSnackBar({
    required String content,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Theme.of(context).errorColor,
    ));
  }

  static void successSnackBar({
    required String content,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      backgroundColor: const Color(0xffC4FF79),
    ));
  }

  static void notificationSnackBar({
    required String content,
  }) {
    Duration duration = const Duration(seconds: 2);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      duration: duration,
      backgroundColor: kAlternativeColor,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
