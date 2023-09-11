import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/components/dark_button.dart';
import 'package:flutter_music_player/components/now_playing_avatar.dart';
import 'package:flutter_music_player/constants.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  List<Map> songs = [
    {"title": "", "artist": "", "album": "", "isPlaying": false},
  ];

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "ALBUM • ARTIST",
                    textAlign: TextAlign.center,
                    style: kTextLabel,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DarkButton(
                        icon: Icons.favorite,
                        onTap: () {},
                      ),
                      const NowPlayingAvatar(
                        avatarWidth: 130,
                        borderWidth: 5,
                      ),
                      DarkButton(
                        icon: Icons.more_horiz,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
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
