import 'package:examen_cm/widgets/log_background_bub.dart';
import 'package:flutter/material.dart';


class LogBackground extends StatelessWidget {
  final Widget child;
  const LogBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 210, 206, 206),
      width: double.infinity, ///Para que el contenedor tome todo el espacio
      height: double.infinity,
      child: Stack(
        children: [
          LogBackgroundBub (),
          SafeArea(child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            child: const Icon(
              Icons.person_pin_circle_rounded,
              color: Colors.white,
              size: 100,
            ),
          )),
          child,
        ],
      ),
    );
  }
}