import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/components/dark_button.dart';
import 'package:flutter_music_player/constants.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor:
            kLightGrayBackground, // Change Background color
        systemNavigationBarIconBrightness:
            Brightness.light, // Change Icon color
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DarkButton(
                      icon: Icons.west,
                      onTap: () {},
                    ),
                    Text(
                      "PLAYING NOW",
                      textAlign: TextAlign.center,
                      style: kTextLabel,
                    ),
                    DarkButton(
                      icon: Icons.menu,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
