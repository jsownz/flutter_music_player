import 'package:flutter/material.dart';
import 'package:flutter_music_player/screens/now_playing_screen.dart';
import 'package:flutter_music_player/screens/playlist_screen.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App by Filip Lgierski',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        //scaffoldBackgroundColor: const Color(0xFF32383e),
      ),
      debugShowCheckedModeBanner: false,
      home: const NowPlayingScreen(),
    );
  }
}
