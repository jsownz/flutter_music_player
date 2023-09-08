import 'package:flutter/material.dart';

class MediumDarkButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const MediumDarkButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
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
                Color(0xff2E3238),
                Color(0xff1E2125),
              ],
            ),
            // border: Border.all(color: Color(0xff17191c), width: 4),
            // color: Color(0xff202227),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(-2, -4),
              ),
              BoxShadow(
                color: Color(0xff111215).withOpacity(.7),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(2, 4),
              ),
              BoxShadow(
                color: Color(0xff1b1f22).withOpacity(.8),
                blurRadius: .5,
                spreadRadius: 4,
                offset: Offset(-1, -1),
              ),
              BoxShadow(
                color: Color(0xff1b1f22).withOpacity(.9),
                blurRadius: .5,
                spreadRadius: 4,
                offset: Offset(1, 1),
              ),
            ], // Gradient
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            icon,
            color: const Color(0xff95989b),
            size: 30,
          ),
        ),
      ),
    );
  }
}
