import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  double containerHeight = 190;
  double spacerHeight = 30;
  double bottomSpacerHeight = 20;
  double avatarSize = 130;
  late ScrollController _controller;
  List<Map> songs = [
    {
      "title": "Aqua Euphoria (with Lucentia)",
      "artist": "Spheriá",
      "album": "",
      "src": "music/Aqua-Euphoria-with-Lucentia-432-Hz(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Art of silence",
      "artist": "uniq",
      "album": "",
      "src": "music/Art-Of-Silence_V2(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Crescent Moon",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/Crescent-Moon(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Embrace",
      "artist": "Sappheiros",
      "album": "",
      "src": "music/Embrace(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Downtown Glow",
      "artist": "Ghostrifter & Devyzed",
      "album": "",
      "src": "music/Ghostrifter-Official-Devyzed-Downtown-Glow(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Journey’s End",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/journey-end(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Lost and Found",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/Lost-and-Found(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Morning Routine",
      "artist": "Ghostrifter Official",
      "album": "",
      "src": "music/Morning-Routine-Lofi-Study-Music(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Field Of Fireflies",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/purrple-cat-field-of-fireflies(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Wanted",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/Wanted(chosic.com).mp3",
      "isPlaying": false
    },
    {
      "title": "Wondering",
      "artist": "Purrple Cat",
      "album": "",
      "src": "music/Wondering(chosic.com).mp3",
      "isPlaying": false
    },
  ];

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (_controller.offset > 0 &&
        _controller.position.userScrollDirection == ScrollDirection.reverse) {
      setState(() {
        containerHeight = 150;
        spacerHeight = 0;
        bottomSpacerHeight = 0;
        avatarSize = 80;
      });
    } else if (_controller.offset < 20 &&
        _controller.position.userScrollDirection == ScrollDirection.forward) {
      setState(() {
        containerHeight = 190;
        spacerHeight = 30;
        bottomSpacerHeight = 20;
        avatarSize = 130;
      });
    }
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "ALBUM • ARTIST",
                  textAlign: TextAlign.center,
                  style: kTextLabel,
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 500),
                  child: SizedBox(
                    height: spacerHeight,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: containerHeight,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DarkButton(
                        icon: Icons.favorite,
                        onTap: () {},
                      ),
                      NowPlayingAvatar(
                        avatarWidth: avatarSize,
                        borderWidth: 5,
                        onTap: () {},
                      ),
                      DarkButton(
                        icon: Icons.more_horiz,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                AnimatedSize(
                  duration: Duration(milliseconds: 500),
                  child: SizedBox(
                    height: bottomSpacerHeight,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 5, top: 5),
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: songs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          decoration: songs[index]["isPlaying"]
                              ? BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color(0xff1b1c1f),
                                      Color(0xff121315),
                                    ],
                                    stops: [
                                      0,
                                      1,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
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
                                  ],
                                )
                              : const BoxDecoration(),
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 15, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    songs[index]["title"],
                                    textAlign: TextAlign.left,
                                    style: kSongTitle,
                                  ),
                                  Text(
                                    songs[index]["artist"],
                                    textAlign: TextAlign.left,
                                    style: kSongArtist,
                                  ),
                                ],
                              ),
                              DarkButton(
                                icon: songs[index]["isPlaying"]
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                background: songs[index]["isPlaying"]
                                    ? 'orange'
                                    : 'dark',
                                onTap: () {},
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
