import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/components/dark_button.dart';
import 'package:flutter_music_player/components/now_playing_avatar.dart';
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
            kDarkGrayBackground, // Change Background color
        systemNavigationBarIconBrightness:
            Brightness.light, // Change Icon color
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: kBackground,
            // color: Colors.blue,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DarkButton(
                        icon: Icons.west,
                        onTap: () {},
                      ),
                      const Text(
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
                  const SizedBox(
                    height: 50,
                  ),
                  const NowPlayingAvatar(),
                  const SizedBox(
                    height: 50,
                  ),
                  Text("Low Life", style: kNowPlayingTitle),
                  Text("Future ft. The Weeknd", style: kNowPlayingArtist),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DarkButton(
                          icon: Icons.fast_rewind,
                          onTap: () {},
                        ),
                        DarkButton(
                          icon: Icons.play_arrow,
                          onTap: () {},
                        ),
                        DarkButton(
                          icon: Icons.fast_forward,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
