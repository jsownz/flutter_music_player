import 'package:flutter/material.dart';

class NowPlayingAvatar extends StatefulWidget {
  final double avatarWidth;
  final double borderWidth;
  late VoidCallback onTap;
  NowPlayingAvatar(
      {super.key,
      this.avatarWidth = 325,
      this.borderWidth = 12,
      required this.onTap});

  @override
  State<NowPlayingAvatar> createState() => _NowPlayingAvatarState();
}

class _NowPlayingAvatarState extends State<NowPlayingAvatar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: widget.avatarWidth,
      height: widget.avatarWidth,
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
      child: InkWell(
        onTap: widget.onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.avatarWidth),
          ),
          child: const Image(
            alignment: Alignment.centerRight,
            image: AssetImage('assets/images/lava.jpg'),
            fit: BoxFit.cover,
            // width: widget.avatarWidth,
            // height: widget.avatarWidth,
          ),
        ),
      ),
    );
  }
}
