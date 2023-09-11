import 'package:flutter/material.dart';

class NowPlayingAvatar extends StatefulWidget {
  final double avatarWidth;
  final double borderWidth;
  const NowPlayingAvatar(
      {super.key, this.avatarWidth = 325, this.borderWidth = 12});

  @override
  State<NowPlayingAvatar> createState() => _NowPlayingAvatarState();
}

class _NowPlayingAvatarState extends State<NowPlayingAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.avatarWidth),
        border: Border.all(
          color: const Color(0xFF141519),
          width: widget.borderWidth,
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
          Radius.circular(widget.avatarWidth),
        ),
        child: Image(
          alignment: Alignment.centerRight,
          image: const AssetImage('assets/images/lava.jpg'),
          fit: BoxFit.cover,
          width: widget.avatarWidth,
          height: widget.avatarWidth,
        ),
      ),
    );
  }
}
