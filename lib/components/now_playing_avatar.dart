import 'package:flutter/material.dart';

class NowPlayingAvatar extends StatefulWidget {
  const NowPlayingAvatar({super.key});

  @override
  State<NowPlayingAvatar> createState() => _NowPlayingAvatarState();
}

class _NowPlayingAvatarState extends State<NowPlayingAvatar> {
  double avatarWidth = 325;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(avatarWidth),
        border: Border.all(
          color: const Color(0xFF141519),
          width: 12,
        ),
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
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(avatarWidth),
        ),
        child: Image(
          alignment: Alignment.centerRight,
          image: const AssetImage('assets/images/lava.jpg'),
          fit: BoxFit.cover,
          width: avatarWidth,
          height: avatarWidth,
        ),
      ),
    );
  }
}
