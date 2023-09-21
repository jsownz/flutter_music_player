import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  final IconData icon;
  final String background;
  final VoidCallback onTap;
  const DarkButton({
    super.key,
    required this.icon,
    this.background = 'dark',
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          gradient: background == 'dark'
              ? const RadialGradient(
                  center: Alignment(-.4, -.4),
                  radius: .85,
                  stops: [0, 1],
                  colors: [
                    Color(0xff2E3238),
                    Color(0xff1E2125),
                  ],
                )
              : const RadialGradient(
                  center: Alignment(-.4, -.4),
                  radius: .85,
                  stops: [0, 1],
                  colors: [
                    Color(0xffbe2c0f),
                    Color(0xffe4540a),
                  ],
                ),
          // color: Color(0xff202227),
          border: background == 'dark'
              ? Border.all(
                  width: 2,
                  color: Colors.transparent,
                )
              : Border.all(
                  color: const Color(0xffeb5309),
                  width: 2,
                ),
          boxShadow: [
            background == 'dark'
                ? BoxShadow(
                    color: Colors.white.withOpacity(.1),
                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(-10, -7),
                  )
                : BoxShadow(
                    color: Colors.white.withOpacity(.1),
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: const Offset(-3, -3),
                  ),
            background == 'dark'
                ? BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(5, 2),
                  )
                : BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(3, 3),
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
          color: background == 'dark' ? const Color(0xff95989b) : Colors.white,
        ),
      ),
    );
  }
}
