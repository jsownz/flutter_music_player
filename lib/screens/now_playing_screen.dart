import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_player/components/dark_button.dart';
import 'package:flutter_music_player/components/medium_dark_button.dart';
import 'package:flutter_music_player/components/now_playing_avatar.dart';
import 'package:flutter_music_player/components/play_button.dart';
import 'package:flutter_music_player/constants.dart';
import 'package:audioplayers/audioplayers.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  bool isPlaying = false;
  final player = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  void setPlayerSource() async {
    await player.setSource(AssetSource('music/Wanted(chosic.com).mp3'));
  }

  void resumePlayer() async {
    await player.resume();
  }

  void pausePlayer() async {
    await player.pause();
  }

  @override
  void initState() {
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    setPlayerSource();
    super.initState();
  }

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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${position.inMinutes.toString().padLeft(2, '0')}:${(position.inSeconds % 60).toString().padLeft(2, '0')}",
                          style: kTextLabel.copyWith(fontSize: 12),
                        ),
                        Text(
                          "${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}",
                          style: kTextLabel.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) {
                      final position = Duration(seconds: value.toInt());
                      player.seek(position);
                      player.resume();
                    },
                    activeColor: const Color(0xffa6871d),
                    inactiveColor: const Color(0xff111516),
                    thumbColor: kLightGrayBackground,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediumDarkButton(
                          icon: Icons.fast_rewind,
                          onTap: () {},
                        ),
                        PlayButton(
                          icon: isPlaying ? Icons.pause : Icons.play_arrow,
                          onTap: () {
                            if (isPlaying) {
                              pausePlayer();
                              setState(() {
                                isPlaying = false;
                              });
                            } else {
                              resumePlayer();
                              setState(() {
                                isPlaying = true;
                              });
                            }
                          },
                        ),
                        MediumDarkButton(
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
