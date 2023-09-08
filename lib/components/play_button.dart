import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const PlayButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: const RadialGradient(
              center: Alignment(-.4, -.4),
              radius: .85,
              stops: [0, 1],
              colors: [
                Color(0xffbe2c0f),
                Color(0xffe4540a),
              ],
            ),
            border: Border.all(
              color: const Color(0xffeb5309),
              width: 3,
            ),
            // color: Color(0xff202227),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(-3, -5),
              ),
              BoxShadow(
                color: const Color(0xff111215).withOpacity(.7),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(3, 5),
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
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
