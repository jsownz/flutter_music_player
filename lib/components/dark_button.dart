import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const DarkButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            center: Alignment(-.4, -.4),
            radius: .85,
            stops: [0, 1],
            colors: [
              Color(0xff2E3238),
              Color(0xff1E2125),
            ],
          ),
          // color: Color(0xff202227),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(.1),
              blurRadius: 15,
              spreadRadius: 0,
              offset: const Offset(-10, -7),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(5, 2),
            ),
            const BoxShadow(
              color: Color(0xff2b2f35),
              blurRadius: .5,
              spreadRadius: 2,
              offset: Offset(-1, -1),
            ),
            BoxShadow(
              color: Colors.white.withOpacity(.05),
              blurRadius: .5,
              spreadRadius: 2,
              offset: const Offset(1, 1),
            ),
          ], // Gradient
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          color: const Color(0xff95989b),
        ),
      ),
    );
  }
}
